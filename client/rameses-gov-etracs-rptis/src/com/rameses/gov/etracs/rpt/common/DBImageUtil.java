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
    
    private DBImageUtil(String serviceName){
        proxy = lookupServiceProxy(serviceName);
        resolver = MethodResolver.getInstance();
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
    
    
    public File getImage(Object objid) throws Exception{
        
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
        try{
            is = new FileInputStream(new File(filename));
            bis = new BufferedInputStream(is);
            filesize = upload(header, bis);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            if (bis != null) try{ bis.close(); } catch(Exception e){};
            if (is != null) try{ is.close(); } catch(Exception e){};
        }
        
        return filesize;
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
            
            header.put("filesize", filesize);
            saveHeader(header);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        System.out.println("File Size -> " + filesize);
        return filesize;
    }
    
    
    public void deleteImage(Object objid){
        Map data = new HashMap();
        data.put("objid", objid);
        invoke("deleteImage", data);
    }
    
    public void deleteAllImages(Object refid){
        Map data = new HashMap();
        data.put("refid", refid);
        invoke("deleteAllImages", data);
    }
    
        
    public List<Map> getImages(Object objid){
        Map data = new HashMap();
        data.put("refid", objid);
        return (List<Map>)invoke("getImages", data);
    }
    
    
    private List<Map> getImageItems(Object objid){
        Map data = new HashMap();
        data.put("objid", objid);
        return (List<Map>)invoke("getImageItems", data);
    }
    
    private Object saveItem(Map data){
        return invoke("saveItem", data);
    }
    
    private Object saveHeader(Map data){
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
