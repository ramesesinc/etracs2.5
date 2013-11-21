package com.rameses.gov.etracs.tools.exporter;

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import javax.swing.*
import com.rameses.io.*
        
class RemoteServerDataExportController 
{
    @Binding
    def binding;
    
    @Service('RemoteServerDataService')
    def svc;
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    
    def entity;
    def mode;
    
    String getTitle(){
        return 'Remote Server Data (' + entity.state + ')';
    }
    
    void init(){
        entity = [
            state       : 'DRAFT',
            data        : [colltypes:svc.getCollectionTypes(), revitems:[], users:[]],
        ];
        mode   = MODE_CREATE;
    }
    
    void open(){
        entity = svc.open(entity);
        mode = MODE_READ;
    }
    
    void save(){
        if (mode == MODE_CREATE)
            svc.create(entity);
        else
            svc.update(entity);
        entity.state = 'POSTED';
        mode = MODE_READ;
    }
    
    void edit(){
        mode = MODE_EDIT;
    }
    
    void export(){
        def chooser = new JFileChooser();
        int i = chooser.showSaveDialog(null);
        if(i==0) {
            loadUserOtherData()
            FileUtil.writeObject( chooser.selectedFile, entity );
            MsgBox.alert("Data has been successfully exported!");
        }        
    }
    
    void loadUserOtherData(){
        entity.data.funds = svc.getFunds();
        entity.data.users.each{
            it.memberships = svc.getUserMemberships(it.user.objid)
            it.cashbooks = svc.getUserCashBooks(it.user.objid)
        }
    }
          
    
    /*=================================================================
     *
     * HANDLERS 
     *
     *================================================================= */
    
    def selectedCollectionType;
    def selectedRevenueItem;
    def selectedUser;
            
 
    def collectionTypeListHandler = [
            fetchList : { return entity.data.colltypes; }
    ] as EditorListModel;
    
    
    def revenueListHandler = [
            createItem   : { return [isnew:true] },
            
            fetchList    : { return entity.data.revitems; },
            
            validate : { li ->
                def item = li.item 
                if (!item.item) 
                    throw new Exception('Account is required.')
                if (entity.data.revitems.findAll{it.objid == item.item.objid && item.isnew == true})
                    throw new Exception('Duplicate Account is not allowed.')
            },
                    
            onAddItem   : {item ->
                item.isnew = false;
                entity.data.revitems << item;
            },
                    
            onRemoveItem : { item ->
                if (MsgBox.confirm('Remove selected item?')){
                    entity.data.revitems.remove(item);
                    return true;
                }
                return false;
            }
    ] as EditorListModel;
    
    
    def userListHandler = [
            createItem   : { return [isnew:true] },
            
            fetchList    : { return entity.data.users; },
            
            validate : { li ->
                def item = li.item 
                if (!item.user) 
                    throw new Exception('User Account is required.')
                if (entity.data.users.findAll{it.objid == item.user.objid && item.isnew == true})
                    throw new Exception('Duplicate User Account is not allowed.')
            },
                    
            onAddItem   : {item ->
                item.isnew = false;
                entity.data.users << item;
            },
                    
            onRemoveItem : { item ->
                if (MsgBox.confirm('Remove selected item?')){
                    entity.data.users.remove(item);
                    return true;
                }
                return false;
            }
    ] as EditorListModel;
}

