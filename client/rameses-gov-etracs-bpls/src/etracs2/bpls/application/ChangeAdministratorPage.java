/*
 * ChangeAddressPage.java
 *
 * Created on June 6, 2011, 5:36 PM
 */

package etracs2.bpls.application;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  user
 */
@Template(FormPage.class)
public class ChangeAdministratorPage extends javax.swing.JPanel {
    
    /**
     * Creates new form ChangeAddressPage
     */
    public ChangeAdministratorPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(677, 379));
        jPanel1.setLayout(null);

        jLabel1.setText("Enter New Administrator");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(30, 10, 310, 14);

        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
    
}
