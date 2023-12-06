/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class CompraDAO {
    
    public static int registraDetalleCompra(Compra comp) {
        int status = 0;
        Conexion c = new Conexion();
        try {
            Connection cnx = c.conecta();
            String query = "insert into compras(idCompra, idUsuario, total, fechaCompra)"
                    + "values(?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, comp.getCodCompra());
            ps.setString(2, comp.getCodUusario());
            ps.setDouble(3, comp.getTotal());
            ps.setString(4, comp.getFechaCompra());
            status = ps.executeUpdate();
            System.out.println("Registro Exitoso");
            cnx.close();
            return status;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al registrar Exitoso");
            System.out.print(e.getMessage());
        }
        return status;
    }
    
     public static String obtenerCorrelativo() {
        int cantidad;
        String codigoC = null;
        String query = "select count(*) as cantidad from compras";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                cantidad = rs.getInt("cantidad");
                codigoC = String.valueOf(cantidad+1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return codigoC;
    }
}
