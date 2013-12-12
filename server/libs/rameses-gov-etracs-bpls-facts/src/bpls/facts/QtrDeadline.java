/*
 * QtrDeadline.java
 *
 * Created on December 6, 2013, 6:08 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package bpls.facts;

import com.rameses.functions.DateFunc;
import java.util.Date;

/**
 *
 * @author Elmo
 */
public class QtrDeadline {
    
    private Date deadline;
    private int qtr;
    private int month;
    private int year;
    private int day;
    
    /** Creates a new instance of QtrDeadline */
    public QtrDeadline() {
    }
    
    public Date getDeadline() {
        return deadline;
    }
    
    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }
    
    public int getQtr() {
        return qtr;
    }
    
    public void setQtr(int qtr) {
        this.qtr = qtr;
    }
    
    public int getMonth() {
        return month;
    }
    
    public void setMonth(int month) {
        this.month = month;
    }
    
    public int getYear() {
        return year;
    }
    
    public void setYear(int year) {
        this.year = year;
    }
    
    public int getDay() {
        return day;
    }
    
    public void setDay(int day) {
        this.day = day;
    }
    
    public Date getBeginQtrDate() {
        return DateFunc.startQtrDate( year, qtr );
    }
    
}
