import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.gov.etracs.rpt.common.*;
import com.rameses.util.MapBeanUtils;

public class RealPropertyController
{
    @Binding
    def binding;
          
    @Service('RealPropertyService')
    def svc;
    
    @Service('LGUService')
    def lguSvc;
    
    String getTitle(){
        return 'Real Property'
    }
    
    def entity;
    
    def mode;
    def MODE_READ = 'read';
    def MODE_CREATE = 'create';
    def MODE_EDIT  = 'edit'
    
    boolean allowCreate = true;
    boolean allowDelete = true;
    boolean allowApprove = true;
    boolean allowEdit = true;
    boolean allowEditPinInfo = false;
    boolean allowEditSectionParcel = false;
    
    boolean autoEdit = false;
    boolean autoCreate = false;
    boolean autoClose = false;
    boolean showClose = true;
    
    
    def oncreate; //handler 
    def onupdate; //handler 
    def onedit;   //handler
    
    def ryList;
    
    public boolean getAllowEdit(){
        if ( entity.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if (mode == MODE_READ)
            return false;
        return allowEdit;
    }
    

    public boolean getShowEditAction(){
        if ( entity.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if (mode != MODE_READ)
            return false;
        return allowEdit;
    }
    
    public boolean getShowDeleteAction(){
        if ( entity.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if ( ! entity.state.toUpperCase().matches('FORTAXMAPPING'))
            return false;
        if (mode != MODE_READ)
            return false;
        return allowDelete;
    }
    
        
    public boolean getShowApproveAction(){
        if ( entity.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if ( ! entity.state.toUpperCase().matches('FORTAXMAPPING'))
            return false;
        if (mode != MODE_READ)
            return false;
        return allowApprove;
    }
    
        
    @PropertyChangeListener
    def listener = [
        'entity.pintype|entity.isection|entity.iparcel' :{ buildPin() },
    ]
    
                
    void init(){
        ryList = svc.getRyList();
        
        if (!entity){
            entity = svc.init();
            entity.isection = null;
            entity.iparcel = null;
            allowEditPinInfo = true;
        }
        
        if (entity.isection == null || entity.iparcel == null)
            allowEditSectionParcel = true;
        
        entity.ry = ryList.find{it == entity.ry}
        mode = MODE_CREATE;
    }
        
    void open(){
        ryList = svc.getRyList();
        entity.putAll(svc.open(entity));
        
        if (entity.isection == null || entity.iparcel == null)
            allowEditSectionParcel = true;
        
        mode = MODE_READ;
        if (showEditAction && autoEdit){
            edit();
        }
    }
    
    
    def create(){
        entity = svc.create(entity);
        mode = MODE_READ;
        entity.isnew = false;
        if (oncreate) oncreate(entity);
        if (autoClose)
            return close();
    }
    
    def update(){
        entity = svc.update(entity);
        mode = MODE_READ;
        entity.isnew = false;
        if (onupdate) onupdate(entity);
        if (autoClose)
            return close();
    }
    
    def oldEntity;
    void edit(){
        oldEntity = MapBeanUtils.copy(entity);
        mode = MODE_EDIT;
        if (onedit) onedit(entity);
    }
    
    def cancelEdit(){
        if (MsgBox.confirm('Discard any changes?')){
            entity.putAll(oldEntity);
            oldEntity = null;
            mode = MODE_READ;
        }
        if (onupdate) onupdate(entity);
        if (autoClose)
            return close();
    }
    
    def cancelCreate(){
       if (MsgBox.confirm('Cancel new record?')) {
           return close();
       }
       if (autoClose)
           return close();
       return null;
    }
    
    def delete(){
        if (MsgBox.confirm('Delete record?')){
            svc.removeEntity(entity);
            return close();
        }
    }
                
    void submit(){
        if (MsgBox.confirm('Submit for approval?')) {
            entity = svc.submitForApproval(entity);
        }
    }
        
    void approve(){
        if (MsgBox.confirm('Approve?')){
            entity = svc.approve(entity);
        }
    }
    
    
    @Close
    def close(){
        return '_close';
    }
    
                
    void buildPin(){       
        RPTUtil.buildPin(entity);
        binding?.refresh('entity.pin');
    }
    
    
    def getLookupBarangay(){
        return InvokerUtil.lookupOpener('barangay:lookup', [
                onselect : {
                    entity.barangay = it;
                    buildPin();
                },
                
                onempty : {
                    entity.barangay = null;
                }
        
                
        ])
    }
    
    
    def getPinTypes(){
        return ['new','old'];
    }
            
}
