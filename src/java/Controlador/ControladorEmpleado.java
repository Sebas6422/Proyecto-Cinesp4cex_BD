/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.EmpleadoDAO;
import Model.Empleados;
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
@WebServlet(name = "ControladorEmpleado", urlPatterns = {"/ControladorEmpleado"})
public class ControladorEmpleado extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("Registrar")){
            ServletContext context = request.getServletContext();
            String cod;
            String nom;
            String ape;
            String cor;
            String tele;
            String DNI;
            String usu;
            String contr;
            String Rol;
            String img;

            cod = EmpleadoDAO.obtenerCorrelativo();
            nom = request.getParameter("nombre");
            ape = request.getParameter("apellido");
            cor = request.getParameter("email");
            tele = request.getParameter("telefono");
            DNI = request.getParameter("dni");
            usu = request.getParameter("usuario");
            contr = request.getParameter("contraseña");
            Rol = request.getParameter("rol");
            img = request.getParameter("fileImagen");

            String imgePath = context.getRealPath("imagenes/" + img);
            String originalImagePath = "D:\\fondos\\" + img;
            Path source = Paths.get(originalImagePath);
            Path destination = Paths.get(imgePath);
            Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);

            Empleados em = new Empleados();
            em.setCodigo(cod);
            em.setNombres(nom);
            em.setApellidos(ape);
            em.setCorreo(cor);
            em.setTelefono(tele);
            em.setDni(DNI);
            em.setUsuario(usu);
            em.setContrasena(contr);
            em.setRol(Rol);
            em.setImagen("imagenes/" + img);

            int status = EmpleadoDAO.registraEmpleado(em);

            if (status > 0) {
                String codi = request.getParameter("id");
                Empleados emp = new Empleados();
                emp = EmpleadoDAO.obtenerEmpleado(codi);
                request.setAttribute("usuario", emp);
                request.getRequestDispatcher("empleado_admin.jsp").forward(request, response);
            } else {
                response.sendRedirect("index.jsp");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("Eliminar")) {
            Empleados em = new Empleados();
            String codigo = request.getParameter("codigo");
            em.setCodigo(codigo);
            EmpleadoDAO.borrarEmpleado(codigo);
            response.sendRedirect("empleado_admin.jsp");
        }

       if (accion.equalsIgnoreCase("Salir")) {
            HttpSession sessionE = request.getSession(false);
            if(sessionE != null){
                sessionE.invalidate();
            }
            response.sendRedirect("index.jsp");
        }
    }
}
