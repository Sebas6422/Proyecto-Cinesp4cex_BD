/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Config.Conexion;
import Model.Empleados;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author USER
 */
public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Empleados validar(String user, String contrasena) {
        Empleados em = new Empleados();
        String query = "Select * from empleados where usuario=? and contraseña=? and rol = 'Supervisor'";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();

            while (rs.next()) {
                em.setCodigo(rs.getString("idEmpleados"));
                em.setNombres(rs.getString("nombres"));
                em.setApellidos(rs.getString("apellidos"));
                em.setCorreo(rs.getString("correo"));
                em.setTelefono(rs.getString("telefono"));
                em.setDni(rs.getString("dni"));
                em.setUsuario(rs.getString("usuario"));
                em.setContrasena(rs.getString("contraseña"));
                em.setRol(rs.getString("rol"));
                em.setImagen(rs.getString("imagen"));
            }

        } catch (Exception e) {

        }
        return em;
    }

    public List<Empleados> mostrarEmpleado() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from empleados;";
            List<Empleados> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Empleados em = new Empleados();
                em.setCodigo(resultado.getString(1));
                em.setNombres(resultado.getString(2));
                em.setApellidos(resultado.getString(3));
                em.setCorreo(resultado.getString(4));
                em.setTelefono(resultado.getString(5));
                em.setDni(resultado.getString(6));
                em.setUsuario(resultado.getString(7));
                em.setContrasena(resultado.getString(8));
                em.setRol(resultado.getString(9));
                em.setImagen(resultado.getString(10));
                lista.add(em);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static int registraEmpleado(Empleados em) {
        int status = 0;
        Conexion c = new Conexion();
        try {
            Connection cnx = c.conecta();
            String query = "insert into empleados(idEmpleados, nombres, apellidos, correo, telefono, dni, usuario, contraseña, rol, imagen)"
                    + "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, em.getCodigo());
            ps.setString(2, em.getNombres());
            ps.setString(3, em.getApellidos());
            ps.setString(4, em.getCorreo());
            ps.setString(5, em.getTelefono());
            ps.setString(6, em.getDni());
            ps.setString(7, em.getUsuario());
            ps.setString(8, em.getContrasena());
            ps.setString(9, em.getRol());
            ps.setString(10, em.getImagen());

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

    public static void borrarEmpleado(String codigo_Empleado) {
        String query = "delete from empleados where idEmpleados=" + codigo_Empleado;
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
        String query = "select count(*) as cantidad from empleados";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                cantidad = rs.getInt("cantidad");
                codigoC = String.valueOf(cantidad + 1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return codigoC;
    }

    public static String obtenerNombreEmpleadoPorCodigo(String codigo) {
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
    
    public static Empleados obtenerEmpleado(String codigo){
        Empleados emp = new Empleados();
        String query = "SELECT * FROM empleados WHERE idEmpleados = ?";
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, codigo);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                emp.setCodigo(rs.getString("idEmpleados"));
                emp.setNombres(rs.getString("nombres"));
                emp.setApellidos(rs.getString("apellidos"));
                emp.setCorreo(rs.getString("correo"));
                emp.setTelefono(rs.getString("telefono"));
                emp.setDni(rs.getString("dni"));
                emp.setUsuario(rs.getString("usuario"));
                emp.setContrasena(rs.getString("contraseña"));
                emp.setRol(rs.getString("rol"));
                emp.setImagen(rs.getString("imagen"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return emp;
    }

}
