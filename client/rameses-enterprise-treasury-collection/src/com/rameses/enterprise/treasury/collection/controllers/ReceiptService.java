package com.rameses.enterprise.treasury.collection.controllers;

public interface ReceiptService{
    Object create(Object receipt);
    Object open(Object receiptid);
    void update(Object receipt);
    Object voidReceipt(Object receiptid, String reason);
    void delete(Object receiptid, String reason);
    Object initReceipt(Object params);
    String convertToWord(Object value);
}