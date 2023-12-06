/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Model.PromocionDAO;
import Model.Promocion;
import jakarta.servlet.ServletContext;
import java.io.IOException;
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
 * @author Julioo
 */
@WebServlet(name = "ControladorPromocion", urlPatterns = {"/ControladorPromocion"})
public class ControladorPromocion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ServletContext context = request.getServletContext();
            String cod = request.getParameter("codigo");
            String name = request.getParameter("nombre");
            String des = request.getParameter("descripcion");
            String img = request.getParameter("fileImagen");

            String imgePath = context.getRealPath("imagenes/" + img);
            String originalImagePath = "D:\\fondos\\" + img;
            Path source = Paths.get(originalImagePath);
            Path destination = Paths.get(imgePath);
            Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);
            
            Promocion prom = new Promocion();
            prom.setCodigo(cod);
            prom.setNombre(name);
            prom.setDescripcion(des);
            prom.setImagen("imagenes/" + img);

            int status = PromocionDAO.registraPromocion(prom);

            if (status > 0) {
                response.sendRedirect("Promociones_admin.jsp");
            } else {
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
            Promocion prom = new Promocion();
            String codigo = request.getParameter("codigo");
            prom.setCodigo(codigo);
            
            String nombrei = PromocionDAO.obtenerNombrePromocionPorCodigo(codigo);
            String ruta = request.getServletContext().getRealPath("");
            Path rutaI = Paths.get(ruta, nombrei);
            
            PromocionDAO.borrarPelicula(codigo);
            Files.delete(rutaI);
            response.sendRedirect("Promociones_admin.jsp");
        }
    }
}
