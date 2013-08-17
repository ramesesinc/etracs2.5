package test;

import com.rameses.osiris2.test.OsirisTestPlatform;
import java.util.HashMap;
import java.util.Map;
import javax.swing.UIManager;

public class Main 
{
    public static void main(String[] args) throws Exception 
    {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName()); 
        }catch(Exception e){;} 
        
        Map env = new HashMap();  
        env.put("app.cluster", "osiris3");
        env.put("app.context", "etracs25");
        env.put("app.host", "localhost:8070");
        env.put("readTimeout", "30000"); 
        OsirisTestPlatform.runTest(env, new HashMap());
    }

    public Main() {
    }
}
