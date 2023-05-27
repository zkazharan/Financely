package financely;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Kelompok 3 RPL 4A
 * - Afwa Afini
 * - Azka Ahmad Azharan
 * - Hanisah Fildza Annafisah
 * - Innaka Dylee
 */
public class DBconnect {
    public static Connection mysqlconfig;
    public static Connection configDB()throws SQLException{
        try{
            String url="jdbc:mysql://localhost/catat_uang";
            String user="root";
            String pass="";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig=DriverManager.getConnection(url, user, pass);
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Gagal Koneksi");
            System.err.println("koneksi gagal "+e.getMessage());
        }
        
        return mysqlconfig;
    }
}
