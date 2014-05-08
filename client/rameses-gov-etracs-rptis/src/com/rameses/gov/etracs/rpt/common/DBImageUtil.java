/*
 * DBImageUtil.java
 * Created on February 25, 2014, 10:58 AM
 *
 * Rameses Systems Inc
 * www.ramesesinc.com
 *
 */

package com.rameses.gov.etracs.rpt.common;

import com.rameses.common.MethodResolver;
import com.rameses.io.StreamUtil;
import com.rameses.osiris2.client.OsirisContext;
import com.rameses.service.ScriptServiceContext;
import com.rameses.service.ServiceProxyInvocationHandler;
import com.rameses.service.ServiceProxy;

import groovy.lang.GroovyClassLoader;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBImageUtil {
    
    private final int BUFFER_SIZE = 32768;
    
    private static DBImageUtil util;
    private static String serviceName = "DBImageService";
    
    
    private MethodResolver resolver;
    private Object proxy;
    private GroovyClassLoader classLoader = new GroovyClassLoader(getClass().getClassLoader());
    private Date lastErrorConnectionTime;
    
    private DBImageUtil(String serviceName){
        try{
            proxy = lookupServiceProxy(serviceName);
            resolver = MethodResolver.getInstance();
        }
        catch(Exception ex){
            System.out.println("===========================================");
            System.out.println("Error DBImageUtil Initialization...");
            System.out.println(ex.getMessage());
            lastErrorConnectionTime = new Date();
        }
    }
    
    private void reconnect(){
        if (lastErrorConnectionTime == null ) 
            return;
        
        Date currTime = new Date();
        long diff = currTime.getTime() - lastErrorConnectionTime.getTime();
        long diffMinutes = diff / (60 * 1000) % 60;
        
        // try reconnect after 5 minutes
        if (diffMinutes >= 5.0){
            System.out.println("Reconnecting to Image Server : " + currTime );
            try{
                proxy = lookupServiceProxy(serviceName);
                resolver = MethodResolver.getInstance();
            }
            catch(Exception ex){
                System.out.println("Unable to reconnect to Image Server...");
                lastErrorConnectionTime = currTime;
            }
        }
    }
    
    
    private Object lookupServiceProxy(String name) {
        try {
            ScriptServiceContext ect = new ScriptServiceContext(getParams());
            ScriptInfoInf si = ect.create( name,  ScriptInfoInf.class  );
            Class clz = classLoader.parseClass( si.getStringInterface() );
            
            ServiceProxy sp = ect.create( name, new HashMap());
            return Proxy.newProxyInstance( classLoader, new Class[]{clz}, new ServiceProxyInvocationHandler(sp));
        } catch(Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
    }
    
    private interface ScriptInfoInf  {
        String getStringInterface();
    }
    
    
    
    public static DBImageUtil getInstance(){
        return getInstance(serviceName);
    }
    
    public static DBImageUtil getInstance(String svcName){
        serviceName = svcName;
        if ( util == null)
            util = new DBImageUtil(serviceName);
        return util;
    }
    
    
    public byte[] getImage(Object objid) throws Exception{
        
        String cacheDir = System.getProperty("user.dir") + File.separatorChar + "cache";
        clearCacheDir(cacheDir);
        
        String safeid = objid.toString().replaceAll(":", "-");
        String filename = cacheDir + File.separatorChar + safeid;
        
        File file = new File(filename);
        if (!file.exists()){
            System.out.println("Saving " + filename + " ");
            saveToFile(objid, filename);
            file = new File(filename);
        }
        return StreamUtil.toByteArray(new FileInputStream(file));
    }
    
    public File getImage2(Object objid) throws Exception{
        
        String cacheDir = System.getProperty("user.dir") + File.separatorChar + "cache";
        clearCacheDir(cacheDir);
        
        String safeid = objid.toString().replaceAll(":", "-");
        String filename = cacheDir + File.separatorChar + safeid;
        
        File file = new File(filename);
        if (!file.exists()){
            System.out.println("Saving " + filename + " ");
            saveToFile(objid, filename);
            file = new File(filename);
        }
        return file;
    }
    
    void clearCacheDir(String cacheDir){
        File file = new File(cacheDir);
        if (!file.exists()){
            file.mkdir();
        } else {
            String key = "cached_image_file";
            if (System.getProperty(key) == null){
                System.out.println("Clearing image cache -> " + cacheDir);
                File[] files = file.listFiles();
                for (File f : files){
                    f.delete();
                }
            }
            System.getProperties().put(key, "initialized");
        }
    }
    
    
    public void saveToFile(Object objid, String fileName) throws Exception{
        FileOutputStream fos = null;
        long fileSize = 0;
        
        try{
            File file = new File(fileName);
            fos = new FileOutputStream(file, true);
            List<Map> imageItems = getImageItems(objid);
            
            for(Map data : imageItems){
                byte[] bytes = (byte[]) data.get("byte");
                fileSize += bytes.length;
                fos.write(bytes);
                fos.flush();
            }
        } catch(Exception e){
            e.printStackTrace();
            throw e;
        } finally{
            if (fos != null)
                try{ fos.close(); } catch(Exception e){}
        }
    }
    
    
    public long upload(Map header, String filename) throws Exception {
        InputStream is = null;
        BufferedInputStream bis = null;
        long filesize = 0;
        File file = new File(filename);
        try{
            header.put("filesize",file.length());
            is = new FileInputStream(file);
            bis = new BufferedInputStream(is);
            filesize = upload(header, bis);
        } catch(Exception e){
            e.printStackTrace();
            throw e;
        } finally{
            if (bis != null) try{ bis.close(); } catch(Exception e){};
            if (is != null) try{ is.close(); } catch(Exception e){};
        }
        if (filesize != file.length()) {
            throw new Exception("Unload unsuccessful. Try again.");
        }
        return file.length();
    }
    
    
    public long upload(Map header, InputStream source) throws Exception {
        final byte[] buf = new byte[BUFFER_SIZE];
        long filesize = 0;
        int len = -1;
        int fileno = 0;
        
        if (header.get("objid") == null){
            header.put("objid", "H" + new java.rmi.server.UID());
        }
        
        try {
            deleteImage(header.get("objid"));
            saveHeader(header);
            while ((len = source.read(buf)) != -1) {
                fileno += 1;
                filesize += len;
                
                Map data = new HashMap();
                data.put("objid", "F" + new java.rmi.server.UID());
                data.put("parentid", header.get("objid"));
                data.put("fileno", fileno);
                data.put("byte", buf);
                saveItem(data);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        }
        
        return filesize;
    }
    
    
    public long upload(Map header, byte[] bytes) throws Exception {
        final byte[] buf = new byte[BUFFER_SIZE];
        int fileno = 0;
        
        if (header.get("objid") == null){
            header.put("objid", "H" + new java.rmi.server.UID());
        }
        
        try {
            deleteImage(header.get("objid"));
            saveHeader(header);
            
            int startidx = fileno * BUFFER_SIZE;
            int endidx = startidx + BUFFER_SIZE;
            long filesize = 0;
            
            while( endidx <= bytes.length){
                System.arraycopy(bytes, startidx, buf, 0, BUFFER_SIZE);
                fileno += 1;
                startidx = fileno * BUFFER_SIZE;
                endidx = startidx + BUFFER_SIZE;
                filesize += BUFFER_SIZE;
                
                Map data = new HashMap();
                data.put("objid", "F" + new java.rmi.server.UID());
                data.put("parentid", header.get("objid"));
                data.put("fileno", fileno);
                data.put("byte", buf);
                saveItem(data);
            }
            if (filesize < bytes.length){
                System.arraycopy(bytes, startidx, buf, 0, (int)(bytes.length - filesize));
                fileno += 1;
                Map data = new HashMap();
                data.put("objid", "F" + new java.rmi.server.UID());
                data.put("parentid", header.get("objid"));
                data.put("fileno", fileno);
                data.put("byte", buf);
                saveItem(data);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        }
        
        return bytes.length;
    }
    
    public void deleteImage(Object objid){
        if (isConnectionActive() == false)
            throw new RuntimeException("Image Server is not available at this time. Try again later.");
        Map data = new HashMap();
        data.put("objid", objid);
        invoke("deleteImage", data);
    }
    
    public void deleteAllImages(Object refid){
        if (isConnectionActive() == false)
            throw new RuntimeException("Image Server is not available at this time. Try again later.");
        Map data = new HashMap();
        data.put("refid", refid);
        invoke("deleteAllImages", data);
    }
    
    public List<Map> getImages(Object objid){
        List<Map> list = new ArrayList<Map>();
        if (isConnectionActive()){
            Map data = new HashMap();
            data.put("refid", objid);
            list = (List<Map>)invoke("getImages", data);
        }
        else {
            reconnect();
        }
        return list;
    }
    
    private boolean isConnectionActive(){
        if (proxy == null)
            return false;
        return true;
    }
    
    private List<Map> getImageItems(Object objid){
        List<Map> list = new ArrayList<Map>();
        if (isConnectionActive()){
            Map data = new HashMap();
            data.put("objid", objid);
            list = (List<Map>)invoke("getImageItems", data);
        }
        return list;
    }
    
    private Object saveItem(Map data){
        if (isConnectionActive() == false)
            throw new RuntimeException("Image Server is not available at this time. Try again later.");
        return invoke("saveItem", data);
    }
    
    private Object saveHeader(Map data){
        if (isConnectionActive() == false)
            throw new RuntimeException("Image Server is not available at this time. Try again later.");
        return invoke("saveHeader", data);
    }
    
    private Object invoke(String methodName, Object data) {
        try {
            return resolver.invoke(proxy, methodName, new Object[]{data});
        } catch(RuntimeException re) {
            throw re;
        } catch(Exception re) {
            throw new RuntimeException(re.getMessage(), re);
        }
    }
    
    private Map getParams() {
        Map appEnv = OsirisContext.getClientContext().getAppEnv();
        
        Object appHost = appEnv.get("image.server.host");
        Object appContext = appEnv.get("image.server.context");
        Object appCluster = appEnv.get("image.server.cluster");
        
        if (appHost == null) {
            appHost = appEnv.get("app.host");
            appContext = appEnv.get("app.context");
            appCluster = appEnv.get("app.cluster");
        }
        
        System.out.println("=====================================");
        System.out.println("image.server.host -> " + appHost);
        System.out.println("image.server.context -> " + appContext);
        System.out.println("image.server.cluster -> " + appCluster);
        System.out.println("=====================================");
        
        
        Map param = new HashMap();
        param.put("app.host", appHost);
        param.put("app.context", appContext);
        param.put("app.cluster", appCluster);
        return param;
    }
    
}
