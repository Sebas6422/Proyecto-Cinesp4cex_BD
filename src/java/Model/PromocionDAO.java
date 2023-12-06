/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import Model.Promocion;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/**
 *
 * @author Julioo
 */
public class PromocionDAO {

    public static int registraPromocion(Promocion p){
        int status  = 0;
        Conexion c = new Conexion();
        try{
            Connection cnx = c.conecta();
            String query = "insert into promociones(idPromocion, nombre, descripcion, imagen)" 
                    + "values(?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, p.getCodigo());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getDescripcion());
            ps.setString(4, p.getImagen());
            
            status = ps.executeUpdate();
            System.out.println("Registro Exitoso");
            cnx.close();
            return status;
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Error al registrar Exitoso");
            System.out.print(e.getMessage()); 
        }
        return status;
    }
    
    public static List<Promocion> mostrarPromocion() throws ClassNotFoundException{
        try{
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from promociones;";
            List<Promocion> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Promocion p = new Promocion();
                p.setCodigo(resultado.getString(1));
                p.setNombre(resultado.getString(2));
                p.setDescripcion(resultado.getString(3));
                p.setImagen(resultado.getString(4));
                lista.add(p);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }
    public static int editarPromocion(Promocion p) {

        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "UPDATE promociones SET nombre=?, descripcion=?, imagen=? WHERE idPromocion=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, p.getNombre());
            ps.setString(2, p.getDescripcion());
            ps.setString(3, p.getImagen());
            ps.setString(4, p.getCodigo());

            int rowsUpdated = ps.executeUpdate();
            System.out.println("Edición Exitosa. Filas actualizadas: " + rowsUpdated);

            cnx.close();
            return rowsUpdated; // Puedes devolver la cantidad de filas actualizadas si es necesario
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al editar: " + e.getMessage());
        }
        return 0;
    }

    public static void borrarPelicula(String codigo_Promocion){
        String query = "delete from promociones where idPromocion="+ codigo_Promocion;
        try{
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.executeUpdate();
            ps.close();
            cnx.close();
        }catch(Exception e){
            
        }
    }

    public Promocion leerPromocion(String codigo) throws ClassNotFoundException  {
        Promocion p = new Promocion();
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from promociones where idPromocion="+codigo;            
            Statement ps = cnx.createStatement(); 
            ResultSet rs = ps.executeQuery(query);

            while(rs.next()){
               p.setCodigo(rs.getString(1));
               p.setNombre(rs.getString(2));
               p.setDescripcion(rs.getString(3));
               p.setImagen(rs.getString(4));
            }      
            rs.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return p;
    } 

    public static String obtenerNombrePromocionPorCodigo(String codigo) {
        String nombreImagen = null;
        String query = "SELECT imagen FROM promociones WHERE idPromocion = ?";
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
    
    public static String obtenerCorrelativo() {
        int cantidad;
        String codigoC = null;
        String query = "select count(*) as cantidad from empleados";
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
    
    public static String obtenerNombrePeliculaPorCodigo(String codigo) {
        String nombreImagen = null;
        String query = "SELECT imagen FROM empleados WHERE idEmpleados = ?";
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
    
}
