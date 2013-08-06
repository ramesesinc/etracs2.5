package test;

import com.rameses.osiris2.test.OsirisTestPlatform;
import com.rameses.rcp.common.EditorListModel;


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
        env.put("app.debugMode", "true");         
        env.put("app.cluster", "osiris3");
        env.put("app.context", "etracs25");
        env.put("app.host", "localhost:8070");
        env.put("readTimeout", "30000"); 
        env.put("USERID", "USER001");
        env.put("USERNAME", "Santos, Juan");
        env.put("USERFORMALNAME", "Juan Santos");
        env.put("JOBTITLE", "AA - II");
        
        Map roles = new HashMap();
        roles.put("RPT.MASTER_ENCODER", null);
        roles.put("RPT.LANDTAX", null);
        roles.put("RULEMGMT.RULE_AUTHOR", null);
        OsirisTestPlatform.runTest(env, roles); 
    }

    public Main() {
    }
}
