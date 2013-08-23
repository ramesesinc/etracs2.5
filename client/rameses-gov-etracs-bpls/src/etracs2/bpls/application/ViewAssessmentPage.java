/*
 * InitialPage.java
 *
 * Created on April 30, 2013, 6:08 PM
 */

package etracs2.bpls.application;

import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(BusinessHeaderTemplate.class)
public class ViewAssessmentPage extends javax.swing.JPanel {
    
    /** Creates new form InitialPage */
    public ViewAssessmentPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();

        xLabel1.setExpression("<html>\n\n    <table width=\"200\">\n        <tr>\n              <td bgcolor=\"#ffff00\" color=\"white\">Name</td>\n              <td bgcolor=\"#800517\" color=\"white\" align=\"right\">Nazareno Elmo</td>\n        </tr>\n   </table>\n\n</html>");

        xLabel2.setExpression("#{counter}");

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(22, 22, 22)
                .add(xLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 453, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(277, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 78, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(xLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(222, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    // End of variables declaration//GEN-END:variables
    
}
