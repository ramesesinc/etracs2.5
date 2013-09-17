
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.reports.*;


class FAASAdvanceSearch 
{
    @Binding
    def binding
            
            
    def query;
    def onsearch;
    def states;
    
    String title = 'Advance Search'
            
    @Service('LGUService')
    def lguSvc
    
    void init(){
        query.advance = true;
    }
            
    def formControl = [
        getFormControls: {
            return [
                new FormControl( "integer", [captionWidth:100, caption:'RY', name:'query.ry']),
                new FormControl( "combo", [captionWidth:100, caption:'State', name:'query.state', items:'states']),
                new FormControl( "combo", [captionWidth:100, caption:'RPU Type', name:'query.rputype', items:'rputypes']),
                new FormControl( "text", [captionWidth:100, caption:'TD No.', name:'query.tdno']),
                new FormControl( "text", [captionWidth:100, caption:'Previous TD No.', name:'query.prevtdno']),
                new FormControl( "text", [captionWidth:100, caption:'Owner Name', name:'query.ownername']),
                new FormControl( "text", [captionWidth:100, caption:'PIN', name:'query.fullpin']),
                new FormControl( "combo", [captionWidth:100, caption:'Barangay', name:'query.barangay', items:'barangays', expression:'#{item.name}']),
            ]    
        },
   ] as FormPanelModel;
   
    
   def ok(){
       if (onsearch) onsearch(query);
       return close();
   }
   
   def close(){
       return '_close';
   }
   
   def getBarangays(){
       return lguSvc.getBarangaysByParentId(null);
   }
   
   def getRputypes(){
       return ['land', 'bldg', 'mach', 'planttree', 'misc' ]
   }
   
   void clear(){
       def state = query.state
       query = [:];
       query.state = state;
       binding.refresh('.*');
       
   }
   
   
   
        
}
