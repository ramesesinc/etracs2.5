/*
 * DBImageUtil.java
 * Created on February 25, 2014, 10:58 AM
 *
 * Rameses Systems Inc
 * www.ramesesinc.com
 *
 */

package com.rameses.gov.etracs.rpt.common;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class DBImageUtil_1 {
    
    private static final int BUFFER_SIZE = 32768;
    
    public static void main(String[] args) {
        String sourceName = "d:\\Chrysanthemum.jpg";
        
        InputStream is = null;
        BufferedInputStream bis = null;
        
        try{
            is = new FileInputStream(new File(sourceName));
            bis = new BufferedInputStream(is);
            save(bis);
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            if (bis != null)  try{ bis.close(); }catch(Exception e){};
            if (is != null)  try{ is.close(); }catch(Exception e){};
        }
        
    }
    
    
    public static long save(InputStream from) throws Exception {
        String targetName = "d:\\Chrysanthemum2.jpg";
        
        OutputStream os = null;
        BufferedOutputStream bos = null;
        
        final byte[] buf = new byte[BUFFER_SIZE];
        long filesize = 0;
        int len = -1;
        int fileno = 0;
        
        try {
            os = new FileOutputStream(new File(targetName));
            bos = new BufferedOutputStream(os);
            
            while ((len = from.read(buf)) != -1) {
                fileno += 1;
                bos.write(buf, 0, len);
                System.out.println("File No. " + fileno + "  [" + buf + "]");
                filesize += len;
            }
            bos.flush();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        finally{
            if (bos != null)  try{ bos.close(); }catch(Exception e){};
            if (os != null)  try{ os.close(); }catch(Exception e){};
        }
        System.out.println("File Size -> " + filesize);
        return filesize;
    }
}
