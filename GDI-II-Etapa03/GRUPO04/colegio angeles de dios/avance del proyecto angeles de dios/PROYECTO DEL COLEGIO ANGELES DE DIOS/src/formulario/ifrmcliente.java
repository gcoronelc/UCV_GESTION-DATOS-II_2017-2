/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package formulario;

// agragamos las librerias correspondientes que vamos a usar 
import java.awt.Font;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.StringTokenizer;
import javax.swing.JOptionPane;




public class ifrmcliente extends javax.swing.JInternalFrame {

  int num=0;
    
    
    
    public ifrmcliente() {
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

        jbtnSalir = new javax.swing.JButton();
        jbtnGrabar = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jbtnLimpiar = new javax.swing.JButton();
        jtxtNombre = new javax.swing.JTextField();
        jtxtDireccion = new javax.swing.JTextField();
        jtxtRuc = new javax.swing.JTextField();
        jtxtTelf = new javax.swing.JTextField();

        setBackground(new java.awt.Color(255, 255, 255));
        setTitle("MATRICULA POR GRADO");

        jbtnSalir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/formulario/image/z.jpg"))); // NOI18N
        jbtnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnSalirActionPerformed(evt);
            }
        });

        jbtnGrabar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/formulario/image/nuevo.png"))); // NOI18N
        jbtnGrabar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnGrabarActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        jLabel1.setText("nombre de alumno");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        jLabel2.setText("direccion");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        jLabel3.setText("GRADO");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        jLabel4.setText("numero de telefono");

        jbtnLimpiar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/formulario/image/b.jpg"))); // NOI18N
        jbtnLimpiar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnLimpiarActionPerformed(evt);
            }
        });

        jtxtDireccion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtDireccionActionPerformed(evt);
            }
        });

        jtxtRuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtRucActionPerformed(evt);
            }
        });

        jtxtTelf.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtTelfActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jbtnGrabar, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 91, Short.MAX_VALUE)
                        .addComponent(jbtnLimpiar, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(80, 80, 80)
                        .addComponent(jbtnSalir, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(34, 34, 34))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jtxtNombre)
                            .addComponent(jtxtDireccion)
                            .addComponent(jtxtRuc)
                            .addComponent(jtxtTelf, javax.swing.GroupLayout.DEFAULT_SIZE, 136, Short.MAX_VALUE))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jbtnSalir, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(31, 31, 31)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jtxtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(jtxtDireccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(jtxtRuc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(jtxtTelf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 86, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jbtnGrabar, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jbtnLimpiar, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(19, 19, 19))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jbtnSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnSalirActionPerformed
       
        
        this.dispose();
    }//GEN-LAST:event_jbtnSalirActionPerformed

    private void jbtnGrabarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnGrabarActionPerformed
      
        
        // insertaremos el codigo para guardar los clientes:
        
          String nombre=jtxtNombre.getText().toUpperCase();
        String direccion =jtxtDireccion.getText();
        String ruc =jtxtRuc.getText();
        String telefono =jtxtTelf.getText();
        //falta correo electronico
        
         try{
            FileWriter fw= new FileWriter("Cliente.txt",true);
            PrintWriter pw= new PrintWriter(fw);
            pw.println(nombre + ","+direccion+","+ruc+","+telefono);
            pw.close();
            
           
            
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, "---Error al grabar--- ");
        }
        
        JOptionPane.showMessageDialog(null, "---grabación exitosa--- ");
        
       
        
        
        
    }//GEN-LAST:event_jbtnGrabarActionPerformed

    private void jtxtDireccionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtDireccionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtDireccionActionPerformed

    private void jtxtRucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtRucActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtRucActionPerformed

    private void jtxtTelfActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtTelfActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtTelfActionPerformed

    private void jbtnLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnLimpiarActionPerformed
   
        
        // Introducimos código para limpiar y asi poder registrar mas clientes
        
        jtxtNombre.setText("");
        jtxtDireccion.setText("");
        jtxtRuc.setText("");
        jtxtTelf.setText("");
         
        jtxtNombre.requestFocus();
        
        
        
        
        
        
        
    }//GEN-LAST:event_jbtnLimpiarActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JButton jbtnGrabar;
    private javax.swing.JButton jbtnLimpiar;
    private javax.swing.JButton jbtnSalir;
    private javax.swing.JTextField jtxtDireccion;
    private javax.swing.JTextField jtxtNombre;
    private javax.swing.JTextField jtxtRuc;
    private javax.swing.JTextField jtxtTelf;
    // End of variables declaration//GEN-END:variables
}