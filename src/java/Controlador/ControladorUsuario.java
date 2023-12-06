/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.Usuario;
import Model.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

/**
 *
 * @author USER
 */
@WebServlet(name = "ControladorUsuario", urlPatterns = {"/ControladorUsuario"})
public class ControladorUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext context = request.getServletContext();

        String cod;
        String nom;
        String ape;
        String cor;
        String tele;
        String contr;
        String img;

        cod = UsuarioDAO.obtenerCorrelativo();
        nom = request.getParameter("nombre");
        ape = request.getParameter("apellido");
        cor = request.getParameter("email");
        tele = request.getParameter("telefono");
        contr = request.getParameter("contraseña");
        img = request.getParameter("fileImagen");

        String imgePath = context.getRealPath("imagenes/" + img);
        String originalImagePath = "C:\\Users\\User\\Downloads\\dasdasd\\PROYECTOSOLUCIONES\\img\\" + img;
        Path source = Paths.get(originalImagePath);
        Path destination = Paths.get(imgePath);
        Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);

        Usuario us = new Usuario();
        us.setCodigo(cod);
        us.setImagen("imagenes/" + img);
        us.setNombres(nom);
        us.setApellidos(ape);
        us.setCorreo(cor);
        us.setTelefono(tele);
        us.setContrasena(contr);

        int status = UsuarioDAO.registraUsuario(us);

        if (status > 0) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("dulceria_usuario.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion.equalsIgnoreCase("Salir")) {
            HttpSession session = request.getSession(false);
            if(session != null){
                session.invalidate();
            }
            response.sendRedirect("index.jsp");
        }

        
        if (accion.equalsIgnoreCase("Editar")) {
            response.sendRedirect("butacas_usuario.jsp");
        }
        
        if (accion.equalsIgnoreCase("Eliminar")) {
            Usuario us = new Usuario();
            String codigo = request.getParameter("codigo");
            us.setCodigo(codigo);
            UsuarioDAO.borrarUsuario(codigo);
            response.sendRedirect("usuario_admin.jsp");
        }
    }
}
