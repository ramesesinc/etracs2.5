package com.rameses.gov.etracs.rpt.rpu.land.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil;

public class LandValueAdjustmentController 
{
    @Binding
    def binding
    
    @Service('LandRPUService')
    def svc
    
    def onupdate
    
    def lguid
    def rpu
    def selectedItem 
    
            
    void init() {
    }
    
    def onupdateHandler = { la ->
        calculateAssessment()
    }
    
    def viewParams() {
        return InvokerUtil.lookupOpener('landadjustmenparam.view', [landAdjustment:selectedItem, onupdate:onupdateHandler] )
    }
    
    def ok() {
        if( onupdate ) onupdate( rpu )
        return '_close'
    }
    
    def getLookupAdjustment() {
        return InvokerUtil.lookupOpener('landadjustmenttype:lookup', [lguid:lguid, classificationid:'%', ry:rpu.ry] )
    }
    
    def listHandler = [
            
        createItem : { return [adjustment:0.0] },
            
        getColumns : { return [
            new Column(name:'adjustmenttype', caption:'Code*', type:'lookup', handler:'lookupAdjustment',  expression:'#{item.adjustmenttype.code}', width:60, editable:true ),
            new Column(name:'adjustmenttype.name', caption:'Name', width:150),
            new Column(name:'expr', caption:'Computation Formula', width:150),
            new Column(name:'adjustment', caption:'Adjustment', type:'decimal', width:120, format:'#,##0.00' ),
        ]},
                
        validate  : { li -> 
            RPTUtil.required( 'Code', li.item.adjustmenttype)
            checkDuplicate( li.item )
            if ( li.item.objid ){
                calculateAssessment()
            }
        },
                
        onAddItem : { item -> 
            item.objid = 'LDA' + new java.rmi.server.UID()
            rpu.landadjustments.add( item ) 
            calculateAssessment();
        },
                
        onRemoveItem  : { item -> 
            if( MsgBox.confirm( 'Delete selected item?' ) ) {
                rpu.landadjustments.remove( item )
                if (!rpu._landadjustments) 
                    rpu._landadjustments = []
                rpu._landadjustments << [objid:item.objid]
                rpu.landdetails.each{
                    def lda = it.landadjustments.find{ it.adjustmenttype.objid == item.adjustmenttype.objid }
                    if (lda){
                        it.landadjustments.remove(lda)
                        if (!it._landadjustments) it._landadjustments = [];
                        it._landadjustments << [objid:lda.objid]
                    }
                }
                calculateAssessment()
            }
        },
                
        fetchList : { return rpu.landadjustments  },
                
    ] as EditorListModel
    
    
    void calculateAssessment() {
        rpu.putAll( svc.calculateAssessment(rpu) )
        binding.refresh('.*')
    }
    
    void checkDuplicate( item ) {
        def data = rpu.landadjustments.find{ it.adjustmenttype.objid == item.adjustmenttype.objid }
        if( data ) throw new Exception('Duplicate Adjustment is not allowed.')    
    }
    
    boolean getAllowViewParams() {
        if( ! selectedItem  ) return false
        return selectedItem.parameters.size() > 0 
    }
}
