/*
 * TaxFeeAccount.java
 *
 * Created on December 1, 2013, 6;00 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package bpls.facts;

import java.util.Date;

/**
 *
 * @author Elmo
 */
public class TaxFeeAccount {
    
    private String objid;
    private String acctid;
    private String type;
    private BPLedger ledger;
    private LOB lob;
    private String name;
    private double amount;
    private double  amtpaid;
    private double  amtdue;
    private double assessedvalue;
    private Object data;
    
    private boolean expired;
    private Date deadline;
    private double surcharge;
    private double interest;
    private double discount;
    private double total;
    private Object account;
    private int year;
    private int qtr;
    private int paypriority;
    private double balance;
    private String receivableid;
    
    /** Creates a new instance of TaxFeeAccount */
    public TaxFeeAccount() {
    }
    
    public String getObjid() {
        return objid;
    }
    
    public void setObjid(String objid) {
        this.objid = objid;
    }
    
    public String getAcctid() {
        return acctid;
    }
    
    public void setAcctid(String acctid) {
        this.acctid = acctid;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public LOB getLob() {
        return lob;
    }
    
    public void setLob(LOB lob) {
        this.lob = lob;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public double getAmount() {
        return amount;
    }
    
    public void setAmount(double amount) {
        this.amount = amount;
    }
    
    public double getAmtpaid() {
        return amtpaid;
    }
    
    public void setAmtpaid(double amtpaid) {
        this.amtpaid = amtpaid;
    }
    
    public double getAmtdue() {
        return amtdue;
    }
    
    public void setAmtdue(double amtdue) {
        this.amtdue = amtdue;
    }
    
    public double getAssessedvalue() {
        return assessedvalue;
    }
    
    public void setAssessedvalue(double assessedvalue) {
        this.assessedvalue = assessedvalue;
    }
    
    public Object getData() {
        return data;
    }
    
    public void setData(Object data) {
        this.data = data;
    }

    public BPLedger getLedger() {
        return ledger;
    }

    public void setLedger(BPLedger ledger) {
        this.ledger = ledger;
    }

    public boolean isExpired() {
        return expired;
    }

    public void setExpired(boolean expired) {
        this.expired = expired;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public double getSurcharge() {
        return surcharge;
    }

    public void setSurcharge(double surcharge) {
        this.surcharge = surcharge;
    }

    public double getInterest() {
        return interest;
    }

    public void setInterest(double interest) {
        this.interest = interest;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Object getAccount() {
        return account;
    }

    public void setAccount(Object account) {
        this.account = account;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getQtr() {
        return qtr;
    }

    public void setQtr(int qtr) {
        this.qtr = qtr;
    }

    public int getPaypriority() {
        return paypriority;
    }

    public void setPaypriority(int paypriority) {
        this.paypriority = paypriority;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getReceivableid() {
        return receivableid;
    }

    public void setReceivableid(String receivableid) {
        this.receivableid = receivableid;
    }
    
}
