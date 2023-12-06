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
public class DetalleCompraDAO {
    public static int registraCompra(DetalleCompra detcomp) {
        int status = 0;
        Conexion c = new Conexion();
        try {
            Connection cnx = c.conecta();
            String query = "insert into detalle_compra(idDetalleCompra, idCompra, carPelicula, carDulceria, carPromocion, cantidad)"
                    + "values(?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, detcomp.getCodDetComp());
            ps.setString(2, detcomp.getCodCompra());
            ps.setString(3, detcomp.getCarPelicula());
            ps.setString(4, detcomp.getCarDulceria());
            ps.setString(5, detcomp.getCarPromocion());
            ps.setInt(6, detcomp.getCantidad());
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
        String query = "select count(*) as cantidad from detalle_compra";
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
     
     public static String obtenerUltimo() {
        int cantidad;
        String codigoC = null;
        String query = "select count(*) as cantidad from detalle_compra";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                cantidad = rs.getInt("cantidad");
                codigoC = String.valueOf(cantidad);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return codigoC;
    }
}
