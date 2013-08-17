package com.rameses.enterprise.treasury.collection.controllers;

import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*

class ReceiptCollectionTxnController extends PageFlowController
{
    @Binding
    def binding;

    /*@Service('AFControlService')
    def afcontrolSvc;*/

    /*@Service('ETRACSUserService')
    def userSvc;*/

    @Service('DateService')
    def dateSvc;

    /*@Service('ReceiptService')
    def receiptSvc;*/

    def collectionforms;
    def collectionform;
    def collectionhandler;
    def paymentitemlist = [];

    def txnmode;
    def collector;
    def subcollector;
    def txndate;
    def af;
    def opener;
    def entity ;
    def afcontrol;

    def ONLINE_MODE = "ONLINE";
    def OFFLINE_MONE = "OFFLINE";
    def CAPTURE_MODE = "CAPTURE";


    void initOnline()  { init( ONLINE_MODE  ) }
    void initOffline()  { init( OFFLINE_MONE ) }

    def initCapture()  { 
        try {
            collectionforms = InvokerUtil.lookupOpeners("collection:form");
        }
        catch( e ) {}
        this.txnmode = CAPTURE_MODE;
        preservedTxnDate();
        return super.start()
    }

    def init( txnmode ) {
        try {
            collectionforms = InvokerUtil.lookupOpeners("collection:form");
        }
        catch( e ) {}
        this.txnmode = txnmode
        collector = getCollector();
        subcollector = getSubCollector();
        preservedTxnDate();
        return super.start()
    }

    def getCollector(){
        if( txnmode != CAPTURE_MODE ){
            try {
                return null//userSvc.getCollector( OsirisContext.env.USERID );
            }
            catch( e ) { return null; }
        }
        return collector;
    }

    def getSubCollector(){
        if( txnmode != CAPTURE_MODE ) {
            try {
                return null//userSvc.getSubCollector( OsirisContext.env.USERID  );
            }catch( e ) { return null; }
        }
        return subcollector;
    }

    def getCollectorlist() {
        return []
        //return userSvc.getCollectorList()
    }

    void preservedTxnDate() {
        if( txnmode == ONLINE_MODE ) {
            txndate = null;
        }
        else if( ! txndate ) {
            txndate = dateSvc.serverDate;
        }
    }

    def getCollectionhandlers() {
        if( !collectionform ) return [];
        try {
            def c = collectionform.properties.class;
            def params = [
                collector: collector,
                subcollector: subcollector,
                af: [objid:collectionform.properties.afid, aftype:"serial"],
                //openerType: collectionform.properties.collectiontype,
                reportModel: collectionform.handle,
                txnmode: txnmode,
                txndate: txndate
            ];
            def list = InvokerUtil.lookupOpeners("collection:handler", params);
            def r = [];
            list.each{
                def acceptClass = it.properties.acceptClass;
                if( c == null && acceptClass == null ) r.add( it );
                else if( c && acceptClass && c.matches(acceptClass) ) r.add( it );
            }
            return r;
        }
        catch( e ) { 
            e.printStackTrace(); 
            return [];
        }
        return []
    }

    /*def next() {
        if( collectionform.properties.requireactivate == "true" ) {
            if( !afcontrol || getAfControlIsActive() == false ) {
                getAFControlInfo()
                if( !afcontrol ) { return; }
            }
            CommonUtil.required('AF Control', afcontrol);
        }
        collectionhandler.handle.doctype = collectionhandler.properties.doctype;
        collectionhandler.handle.openerType = collectionhandler.properties.collectiontype;
        collectionhandler.handle.afcontrol = afcontrol;
        collectionhandler.handle.collectiontype = collectionhandler.caption;
        collectionhandler.handle.init();
        return "main";
    }*/
    
    def getOpener() {
        collectionhandler.handle.doctype = collectionhandler.properties.doctype;
        collectionhandler.handle.openerType = collectionhandler.properties.collectiontype;
        collectionhandler.handle.afcontrol = afcontrol;
        collectionhandler.handle.collectiontype = collectionhandler.caption;
        collectionhandler.handle.init();
        return collectionhandler
    }

    boolean getAfControlIsActive() {
        return false
        //return afcontrolSvc.checkAfControlIsActive( afcontrol?.objid )
    }

    void getAFControlInfo() {
        /*def assignedtoid = collector?.objid 
        if( subcollector ) assignedtoid = subcollector.objid 
        afcontrol = afcontrolSvc.getActiveAFControl( assignedtoid , collectionform.properties.afid, txnmode ) 
        if( !afcontrol ) {
            def afcontrolList = afcontrolSvc.getInactiveList( assignedtoid, collectionform.properties.afid, txnmode )
            if( afcontrolList ) {
                selectStubToUse( af, afcontrolList )
            }
            else {
                throw new Exception('No assigned Accountable Form for this collector.')
            }
        }*/
    }

    void selectStubToUse( af, afcontrolList ) {
        def params = [
            afid : collectionform.properties.afid,
            mode : txnmode,
            collector: collector,
            subcollector : subcollector,
            onselectHandler : onselectStubHandler,
            list : afcontrolList,
        ]
        def o = InvokerUtil.lookupOpener('afcontrol:activate', params)
        //binding.refresh('af')
        binding.fireNavigation( o )   
    }

    def onselectStubHandler = { afc ->
        afcontrol = afc
        binding.refresh('afcontrol.*');
    }

    /* ------------------------------------------------------------------------------------------------
    *
    * BARCODE SUPPORT 
    *
    ------------------------------------------------------------------------------------------------ */

    def minBarcodeLength = 5

    def readBarcode() {
        def barcode = MsgBox.prompt('Enter or scan barcode.')
        if ( ! barcode ) return 
        if ( barcode.trim().length() < minBarcodeLength ) throw new Exception('Invalid barcode.')
        return loadBarcodeOpener( barcode ) 
    }

    def loadBarcodeOpener(   barcode ) {
        def openercode  = barcode.substring(0, minBarcodeLength)
        def afid        = openercode.substring(3)
        def data        = barcode.substring( minBarcodeLength)

        /*String openerType = 'tc:' + openercode

        try {
            opener = InvokerUtil.lookupOpener( openerType, [:] )
        }
        catch( e ) {
            //
        }*/

        if( ! opener ) throw new Exception( 'Invalid barcode.'  )

        def appcode = opener.properties.appcode 

        //init critical informations
        af = getAfList().find{ it.objid == afid }
        if ( ! af ) throw new Exception('Cannot load associated accountable form reference with no. ' + afid )

        collectiontype = getCollectionTypeList().find{ it.appcode == appcode }
        if( ! collectiontype ) throw new Exception('Collection type for application code ' + appcode + ' is not defined.' )

        if( ! afcontrol ) {
            getAFControlInfo()
            if( ! afcontrol ) {
                return 
            }
        }

        def params = [
            af             : af,
            afcontrol      : afcontrol,
            openerType     : openerType,
            collectiontype : collectiontype,
            collector      : collector,
            subcollector   : subcollector,
            txnmode        : txnmode,
            txndate        : txndate,
            barcode        : barcode, 
        ]

        opener = InvokerUtil.lookupOpener( openerType, params )
        try {
            InvokerUtil.invokeOpener( opener )
            return 'main' 
        }
        catch( e ) {
            MsgBox.err( e )
            return null
        }
    }
}