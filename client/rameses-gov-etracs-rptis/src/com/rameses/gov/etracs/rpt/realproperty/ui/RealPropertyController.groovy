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
        return 'Real Property (' + entity.state + ')'
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
    
    boolean autoEdit = false;
    boolean autoCreate = false;
    
    
    def onupdate; //handler 
    
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
        if (mode != MODE_READ)
            return false;
        return allowDelete;
    }
    
        
    public boolean getShowApproveAction(){
        if ( entity.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if (mode != MODE_READ)
            return false;
        return allowApprove;
    }
    
        
    @PropertyChangeListener
    def listener = [
        'entity.pintype|section|parcel' :{ buildPin() },
    ]
    
                
    void init(){
        entity = svc.init();
        section = null;
        parcel = null;
        mode = MODE_CREATE;
    }
        
    void open(){
        entity.putAll(svc.open(entity));
        section = RPTUtil.toInteger(entity.section);
        parcel = RPTUtil.toInteger(entity.parcel);
        
        mode = MODE_READ;
        if (showEditAction && autoEdit){
            edit();
        }
    }
    
    
    void create(){
        entity = svc.create(entity);
        mode = MODE_READ;
    }
    
    void update(){
        entity = svc.update(entity);
        mode = MODE_READ;
    }
    
    def oldEntity;
    void edit(){
        oldEntity = MapBeanUtils.copy(entity);
        mode = MODE_EDIT;
    }
    
    void cancelEdit(){
        if (MsgBox.confirm('Discard any changes?')){
            entity.putAll(oldEntity);
            oldEntity = null;
            mode = MODE_READ;
        }
    }
    
    def cancelCreate(){
       if (MsgBox.confirm('Cancel new record?')) {
           return '_close';
       }
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
    
    
    def close(){
        if (onupdate) onupdate(entity);
        return '_close';
    }
    
    
    def section = 0;
    def parcel = 0;
    
    void setSection(section){
        this.section = section;
        def ssection = section.toString();
        ssection = ( entity.pintype == 'new' ? ssection.padLeft(3,'0') : ssection.padLeft(2,'0'));
        if (entity.pintype == 'new' && ssection.length() > 3) throw new Exception('Invalid section.')
        if (entity.pintype == 'old' && ssection.length() > 2) throw new Exception('Invalid section.')
            
    }
    
    void setParcel(parcel){
        this.parcel = parcel;
        def sparcel = parcel.toString();
        sparcel = ( entity.pintype == 'new' ? sparcel.padLeft(2,'0') : sparcel.padLeft(3,'0'));
        if (entity.pintype == 'new' && sparcel.length() > 2) throw new Exception('Invalid section.')
        if (entity.pintype == 'old' && sparcel.length() > 3) throw new Exception('Invalid section.')
    }
                
                
    void buildPin(){       
        def newpin = new StringBuilder();
        
        if( entity.provcity ) {
            newpin = entity.provcity.indexno + '-';
        }
        else {
            newpin = '000-';
        }
            
        if( entity.munidistrict ) {
            newpin += entity.munidistrict.indexno + '-';
        }
        else {
            newpin += '00-';
        }
        
        
        if( entity.barangay && entity.barangay.oldindexno == null) {
            entity.barangay.oldindexno = entity.barangay.indexno ;
        }
        
        if( entity.barangay) {
            newpin += entity.barangay?.indexno + '-';
        }
        else {
            newpin += ( entity.pintype == 'new' ? '0000' : '000') + '-';
        }        
        
        
        def ssection = '';
        def sparcel = '';
        
        if( section > 0 ) {
            ssection = section.toString();
            ssection = ( entity.pintype == 'new' ? ssection.padLeft(3,'0') : ssection.padLeft(2,'0'));
            entity.section = ssection;
            newpin += ssection + '-';
        }
        else {
            ssection = ( entity.pintype == 'new' ? '000' : '00') ;
            newpin += ssection + '-';
        }
        
        if( parcel > 0 ) {
            sparcel = parcel.toString();
            sparcel = ( entity.pintype == 'new' ? sparcel.padLeft(2,'0') : sparcel.padLeft(3,'0'));
            entity.parcel = sparcel;
            newpin += sparcel;
        }
        else {
            sparcel = ( entity.pintype == 'new' ? '00' : '000');
            newpin += sparcel ;
        }
        
        entity.pin= newpin;
                
        binding?.refresh('rp.pin')
    }
    
    
    
    def getLookupBarangay(){
        return InvokerUtil.lookupOpener('barangay:lookup', [
                onselect : {
                    entity.barangay = it;
                    
                    entity.munidistrict = lguSvc.lookupMunicipalityById(it.parentid)
                    if (!entity.munidistrict){
                        entity.munidistrict = lguSvc.lookupDistrictById(it.parentid)
                    }
                    
                    entity.provcity = lguSvc.lookupProvinceById(entity.munidistrict?.parentid)
                    if (!entity.provcity){
                        entity.provcity = lguSvc.lookupCityById(entity.munidistrict?.parentid)
                    }
                    buildPin();
                },
                
                onempty : {
                    entity.barangay = null;
                    entity.munidistrict = null;
                    entity.provcity = null;
                }
        
                
        ])
    }
    
    
    def getPinTypes(){
        return ['new','old'];
    }
    
    List getRyList(){
        return svc.getRyList();
    }
            
}
