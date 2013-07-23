package test;

import com.rameses.osiris2.test.OsirisTestPlatform;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author rameses
 */
public class Tester {
    
    /** Creates a new instance of Main */
    public Tester() {
    }
    
     public static void main(String[] args) throws Exception {
        Map roles = new HashMap();
        roles.put("MTOP.ENCODER", null);
        roles.put("MTOP.MTOP_OFFICER", null);
        
        Map map = new HashMap();
        map.put("app.host", "localhost:8070");
        map.put("app.context", "etracs25");
        map.put("app.cluster", "osiris3");
        OsirisTestPlatform.runTest(map, roles);
    }
    
}
