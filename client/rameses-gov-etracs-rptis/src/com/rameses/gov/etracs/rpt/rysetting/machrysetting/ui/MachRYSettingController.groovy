package com.rameses.gov.etracs.rpt.rysetting.machrysetting.ui;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import java.rmi.server.UID

public class MachRYSettingController extends com.rameses.gov.etracs.rpt.rysetting.RYSettingPageFlowController
{
    @Service('MachRYSettingService')
    def svc;
    
    public def getService(){ return svc }
    public String getSettingType(){ return 'mach'}
    public String getSettingTitle(){ return 'Machine Revision Setting'}
    public String getPrefixId(){ return 'MRY'}
    
    void loadItems(){
        assessLevels = svc.getAssessLevels( entity.objid )
        forexes      = svc.getForexes( entity.objid )
    }
    
    
    
    /*---------------------------------------------------------------------
    *
    * Forex Support
    *
    ---------------------------------------------------------------------*/
    def selectedForex 
    def forexes = []
    
    def allowYearColumnEdit = { item ->
        if( isFirstItem( forexes ) ) return true
        return false 
    } as Map


    def forexListHandler  = [
        createItem : { return createForex() },
        getRows    : { return 50 },
                
        getColumns : { return [
            new Column(name:'year', caption:'Year*', type:'integer', editableWhen:'#{allowYearColumnEdit[item]}', format:'0000' ),
            new Column(name:'forex', caption:'Rate*', type:'decimal', editable:true, format:'#,##0.0000'  ),
        ]},
        
        validate : { li -> 
            def forex = li.item 
            def lastItem = null 
            if( forexes ) {
                lastItem = forexes.last()
            }
            if( lastItem ) {
                forex.year = (lastItem ? lastItem.year + 1 : 1)
            }
            svc.saveForex( forex )
        },
                
        onAddItem  : { item -> forexes.add( item ) },
                
        onRemoveItem : { forex -> 
            if( isLastItem( forexes, forex ) && MsgBox.confirm('Delete selected forex?')) {
                svc.deleteForex( forex ) 
                forexes.remove( forex )
                return true
            }
            else{
                throw new Exception('Only the last item can be deleted.')
            }
            return false;
        },
                
        fetchList    : { return forexes },
    ] as EditorListModel


    

    /*---------------------------------------------------------------------
    *
    * Create Records Support
    *
    ---------------------------------------------------------------------*/
    Map createEntity() {
        return [
            objid   : 'MRY' + new UID(),
            ry      : null,
        ]
    }
    
    Map createAssessLevel() {
        return [ 
            objid           : 'AL' + new UID(),
            machrysettingid : entity.objid,
            fixrate         : true,
            rate            : 0.0,
        ]
    }
    
    Map createAssessLevelRange() {
        return [ 
            objid               : 'ALR' + new UID(),
            machassesslevelid   : selectedAssessLevel.objid,
            machrysettingid     : entity.objid,
            mvfrom              : null,
            mvto                : null,
            rate                : 0.0,
        ]
    }
    
    Map createForex() {
        def year = null 
        if (forexes.size() > 0) {
            year = forexes.last().year
        }
        return [
            objid               : 'FO' + new UID(),
            machrysettingid     : entity.objid,
            year                : ( year != null ? year + 1 : null), 
        ]
    }
    
}
