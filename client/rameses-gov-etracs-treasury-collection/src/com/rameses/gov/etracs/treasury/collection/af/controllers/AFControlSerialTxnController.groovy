package com.rameses.gov.etracs.treasury.collection.af.controllers;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;

class AFControlSerialTxnController extends AbstractAFControlTxnController
{
    def title = 'Serial AF Control'
    def getAftype() { return 'serial' }

    void init() {
        super.init()
        setQtyreceived(50)
    }

    void open() {
        setQtyreceived( afcontrol.qtyreceived )
        setStartseries( afcontrol.startseries )
        super.open()
    }

    void setQtyreceived( qtyreceived ) {
        super.setQtyreceived(qtyreceived)
        afcontrol.qtyreceived = qtyreceived
    }

    void setStartseries( startseries ) {
        super.setStartseries(startseries)
        afcontrol.startseries = startseries
        afcontrol.endseries = startseries + qtyreceived - 1
    }
}