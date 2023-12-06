package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class Conexion {
    private Connection cnx;
    
    public Connection conecta() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String usr = "root";
            String psw = "";
            String url = "jdbc:mysql://localhost:3307/cine";
            cnx = DriverManager.getConnection(url, usr, psw);
            return cnx;
        }
        catch(SQLException e){
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    public int pruebaConexion() throws ClassNotFoundException{
        Connection c = conecta();
        if(c!=null){
            return 1;
        }
        else{
            return 0;
        }
    }

    public Connection getConection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
