/*
 * AbstractCollection.java
 *
 * Created on March 13, 2013, 2:55 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.rameses.enterprise.treasury.collection.controllers;

import com.rameses.osiris2.client.InvokerUtil;
import com.rameses.osiris2.common.PageFlowController;
import com.rameses.osiris2.reports.ReportUtil;
import com.rameses.rcp.annotations.Binding;
import com.rameses.rcp.annotations.Service;
import com.rameses.rcp.common.Action;
import com.rameses.rcp.common.MsgBox;
import com.rameses.rcp.common.Opener;
import groovy.lang.Closure;
import java.math.BigDecimal;
import java.rmi.server.UID;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author rameses
 */
public class AbstractCollection extends PageFlowController
{
    private String mode = "create";
    private List actions = new ArrayList();
    private Map entity = new HashMap();
    private Map af = new HashMap();
    private Map afcontrol = new HashMap();
    private String doctype;
    private String collectiontype = "";
    private Map collector = new HashMap();
    private Map subcollector = new HashMap();
    private String txnmode;
    private String txndate;
    private String openerType;
    private Object service = new Object();
    private Object htmlService = new Object();
    private List navActions = new ArrayList();
    private String title = "";
    private List styleRules = new ArrayList();
    
    private final String ONLINE_MODE = "ONLINE";
    private final String OFFLINE_MONE = "OFFLINE";
    private final String CAPTURE_MODE = "CAPTURE";
    private final String DELEGATED_STATE = "DELEGATED";
    private final String OPEN_STATE = "OPEN";
    private final String CAPTURED_STATE = "CAPTURED";
    
    private Map payor = new HashMap();
    private List payments = new ArrayList();
    private PaymentListHandler paymentsummaryHandler;
    
    @Binding
    protected com.rameses.rcp.framework.Binding binding;
    
    @Service( value="ReceiptService", interfaceClass=ReceiptService.class )
    private ReceiptService receiptSvc;
    
    @Service( value="ReportParameterService", interfaceClass=ParameterService.class )
    private ParameterService paramsSvc;
    
    @Service( value="ReceiptHtmlService", interfaceClass=ReceiptHtmlService.class )
    private ReceiptHtmlService htmlSvc;
    
    
    private CollectionReportModel reportModel;
    
    public List getExtendedActions(){
        return new ArrayList();
    }
    
    private Closure newHandler;
    private Closure backHandler;
    private Closure deleteHandler;
    private Closure updateHandler;
    
    public AbstractCollection() {
        /*actions.add(createAction("doNew", "New", "#{mode == 'view' and txnmode != null}", false));
        actions.add(createAction("update", "Save", "#{mode == 'edit'}", false));
        actions.add(createAction("doPrint", "Print", "#{mode == 'view'}", false));
        actions.add(createAction("doVoid", "Void", "#{mode == 'view' and entity.voided == 0}", false));
        actions.add(createAction("create", "Save", "#{mode == 'create'}", false));
        actions.addAll(getExtendedActions());*/
        paymentsummaryHandler = new PaymentListHandler(this);
    }
    
    public void init() {
        mode = "create";
        entity = createEntity();
        entity = (Map) receiptSvc.initReceipt( entity );
        entity.put("doctype", doctype );
    }
    
    public String initInquiry() {
        mode = "view";
        System.out.println("pass here");
        return "html";
    }
    
    public void doNew() {
        invokeNewHandler();
    }
    
    public String edit() throws Exception {
        mode = "edit";
        entity = (Map) receiptSvc.open( entity.get("objid") );
        checkAllowEdit();
        reinitializePaymentSummary();
        Map xinfo = (Map) entity.get("info");
        payor.put("objid", xinfo.get("payorid"));
        payor.put("entityname", xinfo.get("payorname"));
        return "default";
    }
    
    public void newRecord() {
        init();
        //paymentSummary.handle.reload();
    }
    
    public void back() {
        if( backHandler != null ) backHandler.call();
    }
    
    public String create() throws Exception {
        if( MsgBox.confirm("Save collection?") ) {
            validateTxnDate();
            resetItemIncomeAcctInfo();
            entity = (Map) receiptSvc.create( entity );
            if ( isPrintReport() ) {
               print();
            }
            mode = "view";
            return "view";
        }
        return "";
    }
    
    private boolean isPrintReport(){
        Map info = (Map)entity.get("info");
        if( info.get("mode").equals("CAPTURE") )
            return false;
        return true;
    }
    
    public String update() throws Exception {
        if( MsgBox.confirm("Update collection?") ) {
            validateTxnDate();
            resetItemIncomeAcctInfo();
            receiptSvc.update( entity );
            mode = "view";
            invokeUpdateHandler();
            return "view";
        }
        return "";
    }
    
    
    public void validateTxnDate() throws Exception {
        Map xinfo = (Map) entity.get("info");
        Object xtxndate = null;
        if( xinfo.containsKey("txndate") ) xtxndate = xinfo.get("txndate");
        if( txnmode == CAPTURE_MODE && xtxndate.equals(null) ) {
            throw new Exception("Txn Date is required.");
        }
    }
    
    void resetItemIncomeAcctInfo() {
        List xitems = (List) entity.get("items");
        Map item = null;
        for(int i=0; i<xitems.size(); i++) {
            item = (Map) xitems.get(i);
            item.put("acct", null);
        }
    }
    
    public void checkAllowEdit() throws Exception {
        int xvoided = Integer.parseInt(entity.get("voided").toString());
        Map xinfo = (Map) entity.get("info");
        String xmode = xinfo.get("mode").toString();
        if( xvoided == 1) throw new Exception("Document has already been voided.");
        if( xmode == ONLINE_MODE ) throw new Exception("Edit is not allowed for ONILNE transaction.");
    }
    
    public void reinitializePaymentSummary() {
        payments = new ArrayList();
        payments.addAll( (List) entity.get("payments") );
        //paymentSummary = InvokerUtil.lookupOpener('paymentsummary', [updatePaymentHandler:updatePaymentHandler, payments:payments])
    }
    
    protected Map getAdditionalParameters() { 
        return new HashMap();
    }
    
    private final Map getParameters(){
        Map params = (Map)paramsSvc.getStandardParameter( null ); 
        params.putAll(getAdditionalParameters());
        params.put("listSize", getItemsSize());
        return params;
    }
    
    int getItemsSize(){
        List list = (List)entity.get("items");
        return list.size();
    }
    
    public String  doVoid() throws Exception {
        voidReceipt();
        return "_close";
    }
    
    void voidReceipt() throws Exception {
        if( MsgBox.confirm("Void receipt?") ) {
            String reason = MsgBox.prompt("Enter reason for voiding the receipt:");
            if( !"null".equalsIgnoreCase( reason ) ){
                if( reason == null || reason.trim().length() == 0 )
                    throw new Exception("Reason is required.");
                //CommonUtil.required( 'Reason', reason )
                entity = (Map) receiptSvc.voidReceipt( entity.get("objid"), reason.toUpperCase() );
                invokeNewHandler();
                invokeUpdateHandler();
            }
        }      
    }
    
    public String doDelete() throws Exception {
        delete();
        return "_close";
    }   
    
    void delete() throws Exception {
        if( MsgBox.confirm("Delete receipt?") ) {
            String reason = MsgBox.prompt("Enter reason for deleting the receipt:");
            if( reason == null || reason.trim().length() == 0 )
                throw new Exception("Reason is required.");
            //CommonUtil.required('Reason', reason);
            receiptSvc.delete( entity.get("objid"), reason.toUpperCase() );
            invokeNewHandler();
            invokeDeleteHandler();
        }        
    }
        
    public class SelectHandler {
        public void call( Object o ) {
            Map params = (Map) o;
            Map xinfo = (Map) entity.get("info");
            xinfo.put("payorid", params.get("objid"));
            xinfo.put("payorname", params.get("entityname"));
            xinfo.put("payoraddress", params.get("entityaddress"));
            xinfo.put("paidby", xinfo.get("payorname"));
            xinfo.put("paidbyaddress", xinfo.get("payoraddress"));
            binding.refresh("entity.info.*");
        }
    }
    
    public Opener lookupEntity() {
        Map params = new HashMap();
        Map xinfo = (Map) entity.get("info");
        params.put("searchText", (String) xinfo.get("payorname"));
        params.put("onselect", new SelectHandler());
        return InvokerUtil.lookupOpener("entity.lookup", params);
    }
    
    // referenced by XLookupField 
    public Opener getLookupEntity2() {
        return InvokerUtil.lookupOpener("entity.lookup", new HashMap());
    }
        
    public void setPayor( Map payor ) {
        this.payor = payor;
        Map xinfo = (Map) entity.get("info");
        if( !payor.isEmpty() ) {
            xinfo.put("payorid", payor.get("objid"));
            xinfo.put("payorname", payor.get("entityname"));
            xinfo.put("payoraddress", payor.get("entityaddress"));
            xinfo.put("paidby", xinfo.get("payorname"));
            xinfo.put("paidbyaddress", xinfo.get("payoraddress"));
        }
    }
    
    public Map getPayor() {
        return payor;
    }
    
    public Map createEntity() {
        Map xentity = new HashMap();
        xentity.put("objid", "RCT"+new UID());
        xentity.put("docstate", initState());
        xentity.put("opener", openerType);
        xentity.put("voided", 0);
        
        Map xinfo = new HashMap();
        xinfo.put("mode", txnmode);
        xinfo.put("afid", af.get("objid"));
        xinfo.put("aftype", af.get("aftype"));
        if( afcontrol != null ) {
            xentity.put("collectorid", afcontrol.get("collectorid"));
            xinfo.put("afcontrolid", afcontrol.get("objid"));
            xinfo.put("series", afcontrol.get("currentseries"));
            xinfo.put("serialno", afcontrol.get("serialno"));
            xinfo.put("stubno", afcontrol.get("stubno"));
            xinfo.put("collectiontype", collectiontype);
           /* xinfo.put("collectiontype", collectiontype.get("name"));
            xinfo.put("payorrequired", collectiontype.get("payorrequired"));*/
            xinfo.put("collectorid", afcontrol.get("collectorid"));
            xinfo.put("collectorname", afcontrol.get("collectorname"));
            xinfo.put("collectortitle", afcontrol.get("collectortitle"));
        }
        if( subcollector != null ) {
            xinfo.put("capturedbyid", null);
            if( subcollector.containsKey("objid") ) xinfo.put("capturedbyid", subcollector.get("objid"));

            xinfo.put("capturedbyname", null);
            if( subcollector.containsKey("name") ) xinfo.put("capturedbyname", subcollector.get("name"));

            xinfo.put("capturedbytitle", null);
            if( subcollector.containsKey("jobtitle") ) xinfo.put("capturedbytitle", subcollector.get("jobtitle"));
        }
        BigDecimal amt = new BigDecimal("0");
        amt.setScale(2, BigDecimal.ROUND_UP);
        xinfo.put("amount", amt);
        xinfo.put("totalpayment",amt);
        xinfo.put("cash", amt);
        xinfo.put("otherpayment", amt);
        xinfo.put("change", amt);
        xentity.put("info", xinfo);
        xentity.put("items", new ArrayList());
        xentity.put("payments", new ArrayList());
        return xentity;
    }
    
    protected String initState() {
        if( txnmode == CAPTURE_MODE )
            return CAPTURED_STATE;
        
        
        if( afcontrol != null && afcontrol.containsKey("assignedtoid") && !afcontrol.get("collectorid").equals(afcontrol.get("assignedtoid")) )   
            return DELEGATED_STATE;

        return OPEN_STATE;
    }
    
    protected final void updatePaymentInfo( List payments ) {
        calculateTotalPayment(payments);
        calculateTotalOtherPayment( payments );
        calculateTotalCashPayment( payments );
        calculateChange();
        List xpayments = (List) entity.get("payments");
        xpayments.clear();
        xpayments.addAll( payments );
    } 
    
    protected void calculateTotalPayment( List payments ) {
        BigDecimal total = new BigDecimal("0");
        total.setScale(2, BigDecimal.ROUND_UP);
        if( !payments.isEmpty() ) {
            for(int i=0; i<payments.size(); i++) {
                Map item = (Map) payments.get(i);
                total = total.add(new BigDecimal(item.get("amount").toString()));
            }
        }
        Map xinfo = (Map) entity.get("info");
        xinfo.put("totalpayment", total);
    }
    
    void calculateTotalOtherPayment( List payments ) {
        BigDecimal total = new BigDecimal("0");
        total.setScale(2, BigDecimal.ROUND_UP);
        if( !payments.isEmpty() ) {
            Map item = null;
            for(int i=0; i<payments.size(); i++) {
                item = (Map) payments.get(i);
                if( !item.get("paytype").equals("CASH") )
                    total = total.add(new BigDecimal(item.get("amount").toString()));
            }
        }
        Map xinfo = (Map) entity.get("info");
        xinfo.put("otherpayment", total);
    }
    
    void calculateTotalCashPayment( List payments ) {
        BigDecimal total = new BigDecimal("0");
        total.setScale(2, BigDecimal.ROUND_UP);
        if( !payments.isEmpty() ) {
            Map item = null;
            for(int i=0; i<payments.size(); i++) {
                item = (Map) payments.get(i);
                if( item.get("paytype").equals("CASH") )
                    total = total.add(new BigDecimal(item.get("amount").toString()));
            }
        }
        Map xinfo = (Map) entity.get("info");
        xinfo.put("cash", total);
    }
    
    protected final BigDecimal calculateAmountDue() {
        List xitems = (List) entity.get("items");
        BigDecimal amountDue = new BigDecimal("0");
        amountDue.setScale(2, BigDecimal.ROUND_UP);
        Map item = null;
        for(int i=0; i<xitems.size(); i++) {
            item = (Map) xitems.get(i);
            amountDue = amountDue.add(new BigDecimal(item.get("amount").toString()));
        }
        return amountDue;
    }
    
    protected final void calculateChange() {
        Map xinfo = (Map) entity.get("info");
        xinfo.put("change", 0);
        BigDecimal totalpayment = new BigDecimal(xinfo.get("totalpayment").toString());
        totalpayment.setScale(2, BigDecimal.ROUND_UP);
        BigDecimal amount = new BigDecimal(xinfo.get("amount").toString());
        amount.setScale(2, BigDecimal.ROUND_UP);
        if( amount.compareTo(totalpayment) == -1 ) {
            BigDecimal change = new BigDecimal("0");
            change.setScale(2, BigDecimal.ROUND_UP);
            change = totalpayment.subtract(amount);
            xinfo.put("change", change);
            BigDecimal cash = new BigDecimal("0");
            cash.setScale(2, BigDecimal.ROUND_UP);
            BigDecimal otherpayment = new BigDecimal(xinfo.get("otherpayment").toString());
            otherpayment.setScale(2, BigDecimal.ROUND_UP);
            cash = totalpayment.subtract(otherpayment).subtract(change);
            xinfo.put("cash", cash);
        }
    }    
    
    /*public Object getHtml() {
        return htmlService.getHtml( entity.get("objid").toString() );
    }*/

    public String getAmount() {
        Map xinfo = (Map) entity.get("info");
        BigDecimal amount = new BigDecimal(xinfo.get("amount").toString());
        amount.setScale(2, BigDecimal.ROUND_UP);
        return amount.toString();
        //return CommonUtil.formatNumber( '#,##0.00', entity.info.amount )
    }

    public String getTotalpayment() {
        Map xinfo = (Map) entity.get("info");
        BigDecimal totalpayment = new BigDecimal(xinfo.get("totalpayment").toString());
        totalpayment.setScale(2, BigDecimal.ROUND_UP);
        return totalpayment.toString();
        //return CommonUtil.formatNumber( '#,##0.00', entity.info.totalpayment )
    }

    public String getChange() {
        Map xinfo = (Map) entity.get("info");
        BigDecimal change = new BigDecimal(xinfo.get("change").toString());
        change.setScale(2, BigDecimal.ROUND_UP);
        return change.toString();
        //return CommonUtil.formatNumber( '#,##0.00', entity.info.change )
    }
    
    public Action createAction(String name, String caption, String expr, boolean immediate) {
        Action a = new Action(name, caption, null);
        a.setImmediate(immediate);
        if( expr != null ) a.setVisibleWhen(expr);
        return a;
    }
    
    public class AcceptHandler {
        public void call( Object o ) {
            Map payment = (Map) o;
            String paytype = payment.get("paytype").toString();
            if( paytype.equals("CASH") ) 
                addupCashPayment( payment );
            else payments.add( payment );
            invokePaymentHandler();
        }
    }
    
    protected void addupCashPayment( Map payment ) {
        Map cashPayment = new HashMap();
        String paytype = payment.get("paytype").toString();
        String xpaytype = "";
        for(int i=0; i<payments.size(); i++) {
            cashPayment = (Map) payments.get(i);
            xpaytype = cashPayment.get("paytype").toString();
            if( xpaytype.equals(paytype) ) break;
        }
        if( !cashPayment.isEmpty() ) 
            cashPayment.put("amount", payment.get("amount"));
        else payments.add( payment );
    }
    
    void invokePaymentHandler() {
        updatePaymentInfo( payments );
        binding.refresh();
    }
    
    public List getPaymentoptions() {
        Map params = new HashMap();
        params.put("acceptHandler", new AcceptHandler());
        return InvokerUtil.lookupActions("collection:payment", params);
    }
    
    private void invokeNewHandler() {
        if( newHandler != null ) newHandler.call();
    }
    
    void invokeUpdateHandler() {
        if( updateHandler != null ) updateHandler.call( entity  );
    }
    
    void invokeDeleteHandler() {
        if( deleteHandler != null ) deleteHandler.call( entity );
    }
    
    protected String save(Object data) {
        Object xdata = data;
        //if(receiptSvc!=null) {
            //xdata = receiptSvc.save("hello worgie");
        //}
        reportModel.setReportData(xdata);
        reportModel.viewReport();
        return "_close:final";
    }
    
    /*public List getFormActions() {
        return actions;
    }*/

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public CollectionReportModel getReportModel() {
        return reportModel;
    }

    public void setReportModel(CollectionReportModel reportModel) {
        this.reportModel = reportModel;
    }

    public Map getEntity() {
        return entity;
    }

    public void setEntity(Map entity) {
        this.entity = entity;
    }

    public Map getAf() {
        return af;
    }

    public void setAf(Map af) {
        this.af = af;
    }

    public Map getAfcontrol() {
        return afcontrol;
    }

    public void setAfcontrol(Map afcontrol) {
        this.afcontrol = afcontrol;
    }

    public Map getCollector() {
        return collector;
    }

    public void setCollector(Map collector) {
        this.collector = collector;
    }

    public Map getSubcollector() {
        return subcollector;
    }

    public void setSubcollector(Map subcollector) {
        this.subcollector = subcollector;
    }

    public void setNewHandler(Closure newHandler) {
        this.newHandler = newHandler;
    }
    public List getPayments() {
        return payments;
    }

    public void setPayments(List payments) {
        this.payments = payments;
    }

    public String getTxnmode() {
        return txnmode;
    }

    public void setTxnmode(String txnmode) {
        this.txnmode = txnmode;
    }

    public String getOpenerType() {
        return openerType;
    }

    public void setOpenerType(String openerType) {
        this.openerType = openerType;
    }

    public Closure getNewHandler() {
        return newHandler;
    }

    public Closure getBackHandler() {
        return backHandler;
    }

    public void setBackHandler(Closure backHandler) {
        this.backHandler = backHandler;
    }

    public Closure getDeleteHandler() {
        return deleteHandler;
    }

    public void setDeleteHandler(Closure deleteHandler) {
        this.deleteHandler = deleteHandler;
    }

    public Closure getUpdateHandler() {
        return updateHandler;
    }

    public void setUpdateHandler(Closure updateHandler) {
        this.updateHandler = updateHandler;
    }

    public ReceiptService getReceiptSvc() {
        return receiptSvc;
    }

    public void setReceiptSvc(ReceiptService receiptSvc) {
        this.receiptSvc = receiptSvc;
    }

    public void setCollectiontype(String collectiontype) {
        this.collectiontype = collectiontype;
    }

    public String getCollectiontype() {
        return collectiontype;
    }

    public void setTxndate(String txndate) {
        this.txndate = txndate;
    }
    
    public boolean getAllowGeneralCollectionDiscount(){
        return false;
    }
    
    void print() { 
        printReport( reportModel ); 
    }
    
    void printReport( CollectionReportModel reportModel ) {
        try {
            reportModel.setReportData( entity );
            reportModel.setParameters( getParameters() );
            buildReportInfo( entity ); 
            reportModel.viewReport();
            ReportUtil.print( reportModel.getReport(), true );
        }
        catch( Exception e ) {
            e.printStackTrace();
            MsgBox.err(e);
        }
    }
    
    public String doPrint() {
        entity = (Map)receiptSvc.open( entity.get("objid") );
        print();
        return "_close";
    }

    
    
    /*============================================================
     * BuildReportInfo Support 
     *=========================================================**/
    
    private void buildReportInfo( Map entity ) {
        buildItemParticulars( entity );
        buildPayment( entity );
        buildAmountInWords( entity );
        
        DecimalFormat formatter = new DecimalFormat("#,##0.00");
        
        BigDecimal total = new BigDecimal("0").setScale(2);
        List<Map> items = (List<Map>)entity.get("items");
        for( Map item : items){
            if( item.get("discount") != null ){
                total.add( new BigDecimal(item.get("discount")+"").setScale(2));
            }
        }
        if( total.doubleValue() > 0.0){
            Map info = (Map)entity.get("info");
            if( info.get("remarks") == null ) 
                info.put("remarks", "");
            info.put("remarks",  info.get("remarks") +  " (TOTAL DISCOUNT : P" + formatter.format(total) );
        }
    }
        
    private void buildItemParticulars( Map entity ) {
        List<Map> items = (List<Map>)entity.get("items");
        for( Map item : items ){
            item.put("particulars",  item.get("accttitle"));
            if( item.get("remarks") != null ) {
                item.put("particulars", item.get("particulars") + ", " + item.get("remarks"));
            }
       }
    }
    
    private void buildPayment( Map entity ) {
        List payments = (List) entity.get("payments");
        
        List<Map> checkPayments = new ArrayList<Map>();
        for(int i=0; i< payments.size(); i++){
            Map payment = (Map)payments.get(i);
            if( ! payment.get("paytype").equals("CASH")){
                checkPayments.add(payment);
            }
        }
        
        String bank = "";
        String checkNo = "";
        String checkDate = "";
        BigDecimal checkAmount = new BigDecimal(0).setScale(2);
        
        for(Map pmt : checkPayments){
            entity.put("paytype", "CHECK");
            if( bank.length() > 0 ){
                bank += ", ";
                checkNo += ", ";
                checkDate += ", ";
            }
            
            bank += pmt.get("bank");
            checkNo += pmt.get("checkno");
            checkDate += pmt.get("checkdate");
            checkAmount.add(  (BigDecimal)pmt.get("amount") );
            
            entity.put("checkbank", bank);
            entity.put("checkno", checkNo);
            entity.put("checkdate", checkDate);
            entity.put("checkamount", checkAmount);
        }
        
        Map cashPayment = null;
        for(int i=0; i< payments.size(); i++){
            Map payment = (Map)payments.get(i);
            if( payment.get("paytype").equals("CASH")){
                cashPayment = payment;
                break;
            }
        }
                
        if( cashPayment != null ) {
            if ( entity.get("paytype") == null ){
                entity.put("paytype", "CASH");
            }
            else{
                entity.put("paytype", "CASH/CHECK");
            }
        }
    }
    
    private void buildAmountInWords( Map entity ) {
        Map info = (Map)entity.get("info");
        String amtinwords = receiptSvc.convertToWord( info.get("amount")) + " PESOS ONLY";
        entity.put("amountinwords", amtinwords.toUpperCase() );
    }    

    public String getDoctype() {
        return doctype;
    }

    public void setDoctype(String doctype) {
        this.doctype = doctype;
    }
    
    protected final void recalculateReceiptAmount() {
        Map info = (Map)entity.get("info");
        info.put("amount", calculateAmountDue());
        List<Map> payments = new ArrayList<Map>();
        payments.addAll( (List)entity.get("payments") );
        updatePaymentInfo( payments );
        calculateChange();
        binding.refresh("entity.info.*");
    }

    public PaymentListHandler getPaymentsummaryHandler() {
        return paymentsummaryHandler;
    }

    public void setPaymentsummaryHandler(PaymentListHandler paymentsummaryHandler) {
        this.paymentsummaryHandler = paymentsummaryHandler;
    }
    
    public ParameterService getParamsSvc() {
        return paramsSvc;
    }

    public List getNavActions() {
        return navActions;
    }

    public void setNavActions(List navActions) {
        this.navActions = navActions;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
