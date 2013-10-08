package com.rameses.gov.treasury.batchcapture.batch; 

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
        
public class BatchCaptureController  {

    @Binding 
    def binding;    

    @Service("CollectionTypeService")
    def collectionTypeSvc;

    @Service("BatchCaptureCollectionService")
    def svc;

    def title="Batch Capture"

    def mode;
    def entity;
    def batchItems = [];
    def selectedItem;

    def formTypes;
    def formType
    def collectionTypes;
    def collectiontype;
    def lookupexpression
    

    @PropertyChangeListener
    def listener = [
         "formType": { o->
            entity=[:]
            entity.txnmode = 'CAPTURE'
            entity.formno = o.objid;
            entity.formtype = o.formtype;
            collectionTypes = collectionTypeSvc.findAllByFormNoForBatch([formno: o.objid]);
        },
        "collectiontype": { o->
            entity.collectiontype = o;
         }
    ]
    
    def getAfserialHandler() {
        if(! entity.formno) throw new Exception("Please an accountable form first. ")
        return InvokerUtil.lookupOpener("afserialcapture:lookup",[
                "query.formno" : entity.formno,
                onselect:{ m ->
                    entity.collector = m.collector;
                    entity.capturedby = m.subcollector;
                    entity.stub = m.stub;
                    entity.formtype='serial'
                    entity.controlid = m.controlid;
                    entity.prefix = m.prefix
                    entity.suffix = m.suffix
                    entity.serieslength = m.serieslength
                    entity.startseries = m.startseries
                    entity.endseries = m.endseries 
                    entity.sstartseries = formatSeries(m.startseries)
                    entity.sendseries = formatSeries(m.endseries)
                    entity.currentseries = m.currentseries
                    lookupexpression = entity.sstartseries + " - " +  entity.sendseries  
                }]);
    }    

    def getLookupPayer() {
        return InvokerUtil.lookupOpener("entity:lookup", [
            onselect: { o->
                selectedItem.payer = o;
                selectedItem.paidby = o.name;
                selectedItem.paidbyaddress = o.address;
            }
        ]);
    }
            
    def getLookupAccount() {
        return InvokerUtil.lookupOpener("cashreceiptitem:lookup", [ 
            "query.collectorid": entity.collector.objid,
            onselect: { o->
                if(selectedItem.items == null ) selectedItem.items = [];
                selectedItem.items.clear();
                selectedItem.items << [item: o, fund:o.fund];
                selectedItem.acctinfo = o.title;
            }
        ]);
    }
            
    void calculate() {
        def amt = 0.0;
        batchItems.each {
            amt += (it.amount? it.amount: 0.0);
            it.totalcash = it.amount? it.amount: 0.0
        }
        entity.totalamount = amt;
        entity.totalcash = amt;
        entity.totalnoncash = 0.0
        binding?.refresh('entity.totalamount'); 
    }
            
    def listModel = [
        fetchList: { o->
            return batchItems;
        },
        createItem: {
            if( entity.currentseries > entity.endseries)
                    throw new Exception("Current Series already exceeds the end series.  ");
            def m  = [:];
            m.receiptno =  formatSeries(entity.currentseries);
            m.receiptdate = entity.defaultreceiptdate;
            m.collectiontype = entity.collectiontype
            m.series = getNextSeries();
            m._filetype = "batchcapture:misc"
            m.amount = 0.0; 
            m.totalcash = 0.0
            m.totalnoncash = 0.0
            m.collector = entity.collector;
            return m;
        },

        getOpenerParams: {o-> 
            return [
                callerListModel: listModel, 
                calculateHandler: { calculate(); } 
            ]; 
        },

        onAddItem: { o->
            batchItems << o; 
            moveNext();
        },

        onCommitItem:{o-> 
            calculate();
        },

        isColumnEditable:{item, colname-> 
            if (colname != 'amount') return true;
            if (!item.items) return false; 
            return (item.items.size() == 1); 
        },

        onColumnUpdate: {item, colname-> 
            if (colname == 'amount')
                item.items[0].amount = item[colname]; 
        }
    ] as EditorListModel;


    public String formatSeries( series ) {
        def p = (entity.prefix)?entity.prefix:'';
        def s = (entity.suffix)?entity.sufix:'';
        return p + series.toString().padLeft(entity.serieslength, '0') + s;
    }

    public int getNextSeries() {
        return entity.currentseries;
    }

    public void moveNext() {
        entity.currentseries += 1;
        binding.refresh("entity.currentseries");
    }
    
    /********************************************************
      FormActions 
    ********************************************************/
    
    public void init() { 
        formTypes = collectionTypeSvc.getFormTypesForBatch();
        entity = [:]
        mode='init'
    }   

    def open() {
        entity = svc.open(entity)
        batchItems = entity.batchitems
        entity.sstartseries = formatSeries(entity.startseries);
        entity.sendseries = formatSeries(entity.endseries);
        mode = 'saved'
        return 'main';
    }
    
    def next() {
        entity = svc.initBatchCapture(entity);
        entity.totalamount = 0.0
        mode='create'
        return 'main';
    }

    void save() {
        if(!MsgBox.confirm("Save captured collections? ")) return;

        mode = 'saved'
        entity.batchitems = batchItems
        entity = svc.create( entity )
    }

    void edit() {
        mode = 'create'
    }
    
    void submitForPosting() {
        entity = svc.submitForPosting( entity);
    }
    
    void disapprove(){
        entity = svc.disapproved( entity);
    }

    void post() {
        mode = 'posted'
        entity = svc.post( entity);
    }

}