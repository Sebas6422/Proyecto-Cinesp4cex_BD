/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import Model.Pelicula;
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
 * @author USER
 */
public class PeliculaDAO {

    public static int registraPelicula(Pelicula p) {
        int status = 0;
        Conexion c = new Conexion();
        try {
            Connection cnx = c.conecta();
            String query = "insert into peliculas(idPelicula, nombre, director, fechaEstreno, actor, clasificacion, costo, descripcion,imagen)"
                    + "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, p.getIdPelicula());
            ps.setString(2, p.getNombreP());
            ps.setString(3, p.getDirector());
            ps.setString(4, p.getFechaEstreno());
            ps.setString(5, p.getActor());
            ps.setString(6, p.getClasificacion());
            ps.setDouble(7, p.getCosto());
            ps.setString(8, p.getDescripcion());
            ps.setString(9, p.getImagen());

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

    public static List<Pelicula> mostrarPelicula() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from peliculas;";
            List<Pelicula> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Pelicula p = new Pelicula();
                p.setIdPelicula(resultado.getString(1));
                p.setNombreP(resultado.getString(2));
                p.setDirector(resultado.getString(3));
                p.setFechaEstreno(resultado.getString(4));
                p.setActor(resultado.getString(5));
                p.setClasificacion(resultado.getString(6));
                p.setCosto(resultado.getDouble(7));
                p.setDescripcion(resultado.getString(8));
                p.setImagen(resultado.getString(9));
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

    public static void borrarPelicula(String codigo_Pelicula) {
        String query = "delete from peliculas where idPelicula=" + codigo_Pelicula;
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

    public static String obtenerCorrelativo() {
        int cantidad;
        String codigoC = null;
        String query = "select count(*) as cantidad from peliculas";
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
        String query = "SELECT imagen FROM peliculas WHERE idPelicula = ?";
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
