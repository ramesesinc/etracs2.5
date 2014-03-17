/*
 * QtrDeadline.java
 *
 * Created on December 6, 2013, 6:08 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package bpls.facts;


import java.util.Calendar;
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
    
    public QtrDeadline(int yr, int qtr, int day ) {
        this.year = yr;
        this.qtr = qtr;
        this.month = getQtrMonth(qtr);
        this.day = day;
    }
    
     private static int getQtrMonth( int qtr ) {
        switch(qtr) {
            case 1: 
                return Calendar.JANUARY;
            case 2: 
                return Calendar.APRIL; 
            case 3: 
                return Calendar.JULY; 
            default: 
                return Calendar.OCTOBER;
        }
    }
    
    public QtrDeadline(int yr, int qtr ) {
        this.year = yr;
        this.qtr = qtr;
        this.month = getQtrMonth(qtr);
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
        return startQtrDate( year, qtr );
    }
    
    private static Date startQtrDate( int year, int qtr ) {
        Calendar cal = Calendar.getInstance();
        int month = 0;
        switch(qtr) {
            case 1: month = Calendar.JANUARY; break;
            case 2: month = Calendar.APRIL; break;
            case 3: month = Calendar.JULY; break;
            default: month = Calendar.OCTOBER;
        }
        cal.set( year, month, 1,  0, 0  );
        return cal.getTime();
    }
    
    
}
