/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import Model.Usuario;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author USER
 */
public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validar(String user, String contrasena){
        Usuario usu = new Usuario();
        String query = "Select * from usuarios where correo=? and contraseña=?";
        try{
            con = cn.conecta();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            
            while(rs.next()){
                usu.setCodigo(rs.getString("codigo"));
                usu.setImagen(rs.getString("imagen"));
                usu.setNombres(rs.getString("nombres"));
                usu.setApellidos(rs.getString("apellidos"));
                usu.setCorreo(rs.getString("correo"));
                usu.setContrasena(rs.getString("contraseña"));
                usu.setTelefono(rs.getString("celular"));
            }  
        }catch(Exception e){
            
        }
        return usu;
    }
    
    
    public static int registraUsuario(Usuario u){
        int status  = 0;
        Conexion c = new Conexion();
        try{
            Connection cnx = c.conecta();
            String query = "insert into usuarios(codigo, imagen, nombres, apellidos, correo, contraseña, celular)" 
                    + "values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, u.getCodigo());
            ps.setString(2, u.getImagen());
            ps.setString(3, u.getNombres());
            ps.setString(4, u.getApellidos());
            ps.setString(5, u.getCorreo());
            ps.setString(6, u.getContrasena());
            ps.setString(7, u.getTelefono());
            
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
    
    public List<Usuario> mostrarUsuario() throws ClassNotFoundException{
        try{
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from usuarios;";
            List<Usuario> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Usuario us = new Usuario();
                us.setCodigo(resultado.getString(1));
                us.setImagen(resultado.getString(2));
                us.setNombres(resultado.getString(3));
                us.setApellidos(resultado.getString(4));
                us.setCorreo(resultado.getString(5));
                us.setContrasena(resultado.getString(6));
                us.setTelefono(resultado.getString(7));
                lista.add(us);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }
    
    public static void borrarUsuario(String codigo_Usuario){
        String query = "delete from usuarios where codigo="+ codigo_Usuario;
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
    
    public static String obtenerCorrelativo() {
        int cantidad;
        String codigoC = null;
        String query = "select count(*) as cantidad from usuarios";
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
