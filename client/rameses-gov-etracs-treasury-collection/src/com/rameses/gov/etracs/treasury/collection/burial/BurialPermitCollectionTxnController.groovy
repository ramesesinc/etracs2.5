package com.rameses.gov.etracs.treasury.collection.burial

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.osiris2.reports.*
import com.rameses.enterprise.treasury.collection.controllers.*;

class BurialPermitCollectionTxnController extends AbstractCollection 
{                
    @Service('CollectionSettingMasterService')
    def collSvc

    @Service('ItemAcctMasterService')
    def acctSvc

    String title = 'Burial Permit and Fee Collection'
    def sexList = LOV.GENDER
    def permissionTypeList = LOV.BURIAL_PERMISSION_TYPES
    public String update() {
        validateDateOfDeath()
        return super.update();
    }

    void init() {
        super.init();
        entity.nationality = 'FILIPINO';
        entity.sex = 'MALE';
        addReceiptItem();
        addDefaultCashPayment();
        super.start();
    }

    void validateDateOfDeath() {
        /*
        if( entity.dtdeath ) {
            Date dt = java.sql.Date.valueOf(entity.dtdeath)
            if( dt > dateSvc.serverDate ) {
                throw new Exception('Date of Death must be less than or equal to today.')
            }
        }
        if( entity.age > 300 ) {
            throw new Exception('Age must not exceed 300.')
        }
        */
    }

    void addReceiptItem() {
        def cs = collSvc.open();
        def ia = acctSvc.open( [objid:cs.info.burialacctid] );
        if( !ia ) throw new Exception('Burial Permit Fee account is not set in collection setting.');
        def item = [
            acctid    : ia.objid,
            acctno    : ia.acctno,
            accttitle : ia.accttitle,
            fundid    : ia.fundid,
            fundname  : ia.fundname,
            amount    : cs.info.burialamount,
        ];
        entity.items.add( item );
        entity.info.amount = item.amount;
    }

    void addDefaultCashPayment() {
        entity.payments.add( [
            paytype     : 'CASH',
            particulars : 'CASH',
            amount      : entity.info.amount,
        ]);
        entity.info.totalpayment = entity.info.amount;
        entity.info.cash = entity.info.amount;
        reinitializePaymentSummary();
    }
}