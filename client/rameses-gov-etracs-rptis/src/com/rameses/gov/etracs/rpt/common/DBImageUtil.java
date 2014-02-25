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
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBImageUtil {
    
    private final int BUFFER_SIZE = 32768;
    
    private static Object service;
    private static DBImageUtil util;
    private MethodResolver resolver = MethodResolver.getInstance();

    private DBImageUtil(){
        
    }
    
    public static DBImageUtil getInstance(Object svc){
        service = svc;
        if ( util == null)
            util = new DBImageUtil();
        return util;
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
        }
        catch(Exception e){
            e.printStackTrace();
            throw e;
        }
        finally{
            if (fos != null)
                try{ fos.close(); } catch(Exception e){}
        }
        System.out.println("Filesize -> " + fileSize);
    }
    
    
    public long upload(Map header, String filename) throws Exception {
        InputStream is = null;
        BufferedInputStream bis = null;
        long filesize = 0;
        try{
            is = new FileInputStream(new File(filename));
            bis = new BufferedInputStream(is);
            filesize = upload(header, bis);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
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
        } 
        catch (Exception ex) {
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
            return resolver.invoke(service, methodName, new Object[]{data}); 
        } catch(RuntimeException re) {
            throw re;
        } catch(Exception re) { 
            throw new RuntimeException(re.getMessage(), re); 
        }
    }
    
}
