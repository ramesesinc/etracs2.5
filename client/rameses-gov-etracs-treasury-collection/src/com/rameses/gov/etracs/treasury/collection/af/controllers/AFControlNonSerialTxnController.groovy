package com.rameses.gov.etracs.treasury.collection.af.controllers;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;

class AFControlNonSerialTxnController extends AbstractAFControlTxnController
{
    def title = 'Non-Serial AF Control'
    def getAftype() { return 'nonserial' }

    void open() {
        setQtyreceived( afcontrol.qtyreceived )
        setQtyissued( afcontrol.qtyissued )
        super.open()
    }
   
    void setQtyreceived( qtyreceived ) {
        super.setQtyreceived( qtyreceived? qtyreceived:0 )
        afcontrol.qtyreceived = qtyreceived
    }

    void setQtyissued( qtyissued ) {
        super.setQtyissued( qtyissued? qtyissued:0 )
        afcontrol.qtyissued = qtyissued 
        afcontrol.balance = qtyreceived - qtyissued
    }
}