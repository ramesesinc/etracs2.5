package com.rameses.gov.etracs.rpt.mcsettlement;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class MCSettlementController extends com.rameses.gov.etracs.rpt.common.RPTWorkflowController
{

    @Service('MCSettlementService')
    def svc 
            
    String formTitlePrefix = 'MS';
    
    
    
    void create(){
        entity =  svc.create(entity);
        initOpen();
    }
    
    
    public def getService(){ 
        return svc; 
    }
    
    public def getSections(){
        return InvokerUtil.lookupOpeners('mcsettlement:info', [entity:entity, svc:svc])
    }
    
    public def openEntity(){
        return svc.open(entity.objid)
    }
    
    public void deleteEntity(){
        svc.deleteEntity(entity);
    }
    
    public void approveEntity(){
        entity = svc.approve(entity);
    }
    
    public void disapproveEntity(){
        entity = svc.disapprov(entity);
    }
    
            
    void afterInit(){
        formTitle = 'Multiple Claim Settlement (New)'
        entity.objid = RPTUtil.generateId('MS')
    }
    
    
    void afterOpen(){
        formId = entity.txnno;
        formTitle = 'MS: ' + entity.txnno;
    }
    
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup',[
            onselect : {
                if (it.rputype != 'land')
                    throw new Exception('Only Land RPU is allowed.')
                if (it.state != 'CURRENT')
                    throw new Exception('Only Current FAAS is allowed.')
                
                entity.prevfaas = it;
            },
                
            onempty : {
                entity.prevfaas = null;
            }
        ])
    }
        
}
