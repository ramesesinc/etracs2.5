package com.rameses.gov.etracs.rpt.faas.ui;
        
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*
import java.rmi.server.UID
import com.rameses.gov.etracs.rpt.common.RPTUtil;

public class BackTaxController 
{
    @Binding
    def binding;
    
    def onupdate;  //handler
    def allowEdit;
    def svc;
    def faas;
    def mode;
    def selectedItem;
    
    void init() {
        if( ! faas.backtaxes ) 
            faas.backtaxes = []
        faas._backtaxes = []
    }
    
    def ok() {
        return '_close'
    }
    
    def listHandler = [
        fetchList   : { return faas.backtaxes },
        createItem  : { return createEntity() },
        getColumns  : { return [
            new Column(name:'ry', caption:'RY', editable:true, type:'integer', format:'0000', width:50, required:true),
            new Column(name:'tdno', caption:'TD No.', editable:true, width:150, required:true),
            new Column(name:'bmv', caption:'Base Market Value', editable:true, type:'decimal', format:'#,##0.00', width:120, required:true),
            new Column(name:'mv', caption:'Market Value', editable:true, type:'decimal', format:'#,##0.00', width:120, required:true),
            new Column(name:'av', caption:'Assessed Value', editable:true, type:'decimal', format:'#,##0.00', width:120, required:true),
            new Column(name:'effectivityyear', caption:'Effectivity', editable:true, type:'integer', format:'0000', width:120, required:true),
            new Column(name:'taxable', caption:'Taxable?', editable:true, type:'boolean', width:80, required:true),
        ]},
        validate   : { li -> doValidate( li.item) },
        onAddItem  : { item -> 
            item.objid = 'BT' + new UID()
            faas.backtaxes.add( item ) 
        },
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Remove item?') ) {
                faas.backtaxes.remove( item )
                faas._backtaxes.add( item )
                listHandler.refresh()
            }
        },
    ] as EditorListModel 
    
    def doValidate( item ) {
        RPTUtil.required( 'RY', item.ry );
        RPTUtil.required( 'TD No.', item.tdno );
        RPTUtil.required( 'Base Market Value', item.bmv);
        RPTUtil.required( 'Market Value', item.mv );
        RPTUtil.required( 'Assessed Value', item.ry );
        RPTUtil.required( 'Assessed Value', item.av );
        RPTUtil.required( 'Effectivity', item.effectivityyear );
        if( item.bmv < 0.0 ) throw new Exception('Base Market Value must be greater than or equal to zero.')
        if( item.mv < 0.0 ) throw new Exception('Market Value must be greater than or equal to zero.')
        if( item.av < 0.0 ) throw new Exception('Assessed Value must be greater than or equal to zero.')
        if( item.av > item.mv) throw new Exception('Assessed Value must be less than Market Value.')
        if( item.ry >= faas.rpu.ry ) throw new Exception("RY must be less than current FAAS revision year $faas.rpu.ry")
        if( item.effectivityyear < item.ry ) throw new Exception('Effectivity must be greater than or equal to RY')
        if( item.effectivityyear > item.ry + 2 ) throw new Exception('Effectivity must be either ' + item.ry + ' or ' + (item.ry + 1) + '.')
        validateRySequence( item )
        validateNumberBackTaxYearsPolicy( item )
    }
    
    void validateNumberBackTaxYearsPolicy( item ) {
        def maxyears = svc.getMaximumBackTaxYearsPolicy()
        // calculate no. of backtax using the formula
        // faas.ry - lastitem.ry 
        def lastitemry = faas.rpu.ry
        if( faas.backtaxes ) {
            lastitemry = faas.backtaxes.last().ry 
        }
        if( ! item.objid ) {
            lastitemry = item.ry 
        }
        def backtaxyears = faas.rpu.ry - lastitemry
        if( backtaxyears > maxyears ) {
            throw new Exception("Total back tax years of $backtaxyears exceeded the maximum $maxyears years policy.")
        }
        faas.backtaxyrs = backtaxyears 
        if( onupdate ) onupdate()
    }
    
    void validateRySequence( item ) {
        def list = []
        if( ! item.objid ) {
            //new item 
            if( item.ry > faas.rpu.ry ) throw new Exception('RY must be less than ' + faas.rpu.ry + '.')
            list = faas.backtaxes.findAll{ it.ry <= item.ry }
        }
        else {
            def index = faas.backtaxes.findIndexOf{ it.objid == item.objid }
            if( index >= 0 ) {
                def lastindex = index - 1
                if( lastindex >= 0 ){
                    list.addAll( faas.backtaxes[0..index-1].findAll{ it.ry <= item.ry } )
                }
                lastindex = faas.backtaxes.size() - 1
                if( lastindex >= index + 1) {
                    list.addAll( faas.backtaxes[index+1..lastindex].findAll{ it.ry >= item.ry } )
                }
            }
        }
        if( list ) throw new Exception('RY must be arranged in descending order.')
    }
    
    def createEntity(){
        return [taxable:true, faasid:faas.objid, effectivityqtr:1] 
    }
    
    @Close
    public boolean closeForm() {
        try {
            ok()
            return true
        }
        catch( e ) {
            MsgBox.alert( e.message )
            return false 
        }
    }
}