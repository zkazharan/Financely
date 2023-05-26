/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package financely;

/**
 *
 * @author asus
 */
public class Landing extends javax.swing.JFrame {

    /**
     * Creates new form Landing
     */
    public Landing() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ButtonRegisterLanding = new javax.swing.JButton();
        ButtonLoginLanding = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        ButtonRegisterLanding.setBackground(new java.awt.Color(19, 196, 250));
        ButtonRegisterLanding.setFont(new java.awt.Font("Inter", 0, 14)); // NOI18N
        ButtonRegisterLanding.setForeground(new java.awt.Color(255, 255, 255));
        ButtonRegisterLanding.setText("Register Now");
        ButtonRegisterLanding.setBorder(null);
        ButtonRegisterLanding.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButtonRegisterLandingActionPerformed(evt);
            }
        });
        getContentPane().add(ButtonRegisterLanding, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 520, 290, 47));

        ButtonLoginLanding.setBackground(new java.awt.Color(19, 196, 250));
        ButtonLoginLanding.setFont(new java.awt.Font("Inter", 0, 14)); // NOI18N
        ButtonLoginLanding.setForeground(new java.awt.Color(255, 255, 255));
        ButtonLoginLanding.setText("Login");
        ButtonLoginLanding.setBorder(null);
        ButtonLoginLanding.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButtonLoginLandingActionPerformed(evt);
            }
        });
        getContentPane().add(ButtonLoginLanding, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 450, 290, 47));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/UIComponent/Landing.png"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 930, 660));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ButtonRegisterLandingActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButtonRegisterLandingActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ButtonRegisterLandingActionPerformed

    private void ButtonLoginLandingActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButtonLoginLandingActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ButtonLoginLandingActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Landing.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Landing.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Landing.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Landing.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Landing().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton ButtonLoginLanding;
    private javax.swing.JButton ButtonRegisterLanding;
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
}