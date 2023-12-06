/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.Pelicula;
import Model.PeliculaDAO;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

/**
 *
 * @author USER
 */
@WebServlet(name = "ControladorPelicula", urlPatterns = {"/ControladorPelicula"})
public class ControladorPelicula extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ServletContext context = request.getServletContext();
            String cod;
            String nomb;
            String direc;
            String fecha;
            String act;
            String clas;
            Double cos;
            String descr;
            String img;

            cod = PeliculaDAO.obtenerCorrelativo();
            nomb = request.getParameter("nombre");
            direc = request.getParameter("director");
            fecha = request.getParameter("date");
            act = request.getParameter("actprin");
            clas = request.getParameter("clasi");
            cos = Double.parseDouble(request.getParameter("costo"));
            descr = request.getParameter("descripcion");
            img = request.getParameter("fileImagen");

            String imgePath = context.getRealPath("imagenes/" + img);
            String originalImagePath = "C:\\Users\\User\\Downloads\\dasdasd\\PROYECTOSOLUCIONES\\img\\" + img;
            Path source = Paths.get(originalImagePath);
            Path destination = Paths.get(imgePath);
            Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);

            Pelicula pel = new Pelicula();
            pel.setIdPelicula(cod);
            pel.setNombreP(nomb);
            pel.setDirector(direc);
            pel.setFechaEstreno(fecha);
            pel.setActor(act);
            pel.setClasificacion(clas);
            pel.setCosto(cos);
            pel.setDescripcion(descr);
            pel.setImagen("imagenes/" + img);

            int status = PeliculaDAO.registraPelicula(pel);

            if (status > 0) {
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("{\"status\": \"success\"}");
                response.sendRedirect("cartelera_admin.jsp");
            } else {
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("{\"status\": \"error\"}");
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("Eliminar")) {
            Pelicula pe = new Pelicula();
            String codigo = request.getParameter("codigo");
            pe.setIdPelicula(codigo);
            
            String nombrei = PeliculaDAO.obtenerNombrePeliculaPorCodigo(codigo);
            String ruta = request.getServletContext().getRealPath("");
            Path rutaI = Paths.get(ruta, nombrei);
            
            PeliculaDAO.borrarPelicula(codigo);
            Files.delete(rutaI);
            response.sendRedirect("cartelera_admin.jsp");
        }
    }
}
