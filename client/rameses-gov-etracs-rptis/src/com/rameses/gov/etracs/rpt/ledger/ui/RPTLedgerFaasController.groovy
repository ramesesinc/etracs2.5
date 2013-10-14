package com.rameses.gov.etracs.rpt.ledger.ui;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import java.rmi.server.UID;

public class RPTLedgerFaasController  
{
    def svc;
    
    def onaddHandler
    def onupdateHandler
    
    def ledger 
    def ledgerfaas
    
    def mode
    
    
    void create() {
        def toyear = ledger.faases.fromyear.min() - 1;
        ledgerfaas = [
            objid           : 'LI' + new UID(),
            state           : 'PENDING',
            rptledgerid     : ledger.objid,
            fromqtr         : 1,
            toyear          : toyear,
            toqtr           : 4,
            taxable         : true,
            backtax         : false,
            systemcreated   : false,
            assessedvalue   : 0.0,
        ]
        mode = 'create'
    }
    
    void edit() {
        ledgerfaas.txntype = txntypes.find{it.objid == ledgerfaas.txntype.objid}
        ledgerfaas.classification = classifications.find{it.objid == ledgerfaas.classification.objid}
        mode = 'edit' 
    }
    
    def ok() {
        if( ledgerfaas.fromyear > ledgerfaas.toyear )
            throw new Exception('From Year must be less than or equal to To Year.')
        else if (ledgerfaas.fromyear == ledgerfaas.toyear && ledgerfaas.fromqtr > ledgerfaas.toqtr)
            throw new Exception('From Qtr must be less than or equal to To Qtr.')
            
        if( ledgerfaas.assessedvalue == null )
            throw new Exception('Assessed Value is required.')
        
        if (ledgerfaas.assessedvalue < 0.0)
            throw new Exception('Assessed Value must be greater than or equal to zero.')
        
        if( mode == 'create' && onaddHandler ) onaddHandler( ledgerfaas )
        else if( mode == 'edit' && onupdateHandler) onupdateHandler( ledgerfaas )
        return '_close' 
    }
    
    
    List getTxntypes() {
        return svc.getTxnTypes()
    }
    
    List getClassifications() {
        return svc.getClassifications()
    }
    
    List getQuarters(){
        return [1,2,3,4]
    }
    

    
}
