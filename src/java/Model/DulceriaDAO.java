/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import Model.Dulceria;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * W3
 *
 * @author USER
 */
public class DulceriaDAO {

    public static int registraDulceria(Dulceria d) {
        int status = 0;
        Conexion c = new Conexion();
        try {
            Connection cnx = c.conecta();
            String query = "insert into dulcerias(idDulceria, producto, descripcion, precio, imagen)"
                    + "values(?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, d.getCodigo());
            ps.setString(2, d.getProducto());
            ps.setString(3, d.getDescripcion());
            ps.setDouble(4, d.getPrecio());
            ps.setString(5, d.getImagen());

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

    public static List<Dulceria> mostrarDulceria() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from dulcerias;";
            List<Dulceria> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Dulceria d = new Dulceria();
                d.setCodigo(resultado.getString(1));
                d.setProducto(resultado.getString(2));
                d.setDescripcion(resultado.getString(3));
                d.setPrecio(resultado.getDouble(4));
                d.setImagen(resultado.getString(5));
                lista.add(d);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public static void borrarDulceria(String codigo_Dulceria) {
        String query = "delete from dulcerias where idDulceria=" + codigo_Dulceria;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.executeUpdate();
            ps.close();
            cnx.close();
        } catch (Exception e) {

        }
    }

    public static String obtenerNombreImagenPorCodigo(String codigo) {
        String nombreImagen = null;
        String query = "SELECT imagen FROM dulcerias WHERE idDulceria = ?";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, codigo); 
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                nombreImagen = rs.getString("imagen");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return nombreImagen;
    }

     public static Dulceria obtenerDulceria(String codigo){
        Dulceria dul = new Dulceria();
        String query = "SELECT * FROM dulcerias WHERE idDulceria = ?";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, codigo);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                dul.setCodigo(rs.getString("idDulceria"));
                dul.setProducto(rs.getString("producto"));
                dul.setDescripcion(rs.getString("descripcion"));
                dul.setPrecio(rs.getDouble("precio"));
                dul.setImagen(rs.getString("imagen"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return dul;
    }
}
