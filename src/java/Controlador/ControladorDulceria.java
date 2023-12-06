/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.Carrito;
import Model.Compra;
import Model.CompraDAO;
import Model.DetalleCompra;
import Model.DetalleCompraDAO;
import Model.DulceriaDAO;
import Model.Dulceria;
import Model.Producto;
import Model.ProductoDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.nio.file.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USER
 */
@WebServlet(name = "ControladorDulceria", urlPatterns = {"/ControladorDulceria"})
public class ControladorDulceria extends HttpServlet {
    List<Carrito> listaCarrito = new ArrayList<>();
    int item = 0;
    double totalPagar=0.0;
    int cantidad = 1;
    String cod;
    Carrito car;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        ServletContext context = request.getServletContext();

        String codi;
        String produc;
        String des;
        double prec;
        String img;

        codi = request.getParameter("cod");
        produc = request.getParameter("nombre");
        des = request.getParameter("descripcion");
        prec = Double.parseDouble(request.getParameter("precio"));
        img = request.getParameter("fileImagen");

        String imgePath = context.getRealPath("imagenes/" + img);
        String originalImagePath = "D:\\fondos\\" + img;
        Path source = Paths.get(originalImagePath);
        Path destination = Paths.get(imgePath);
        Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);

        Dulceria dul = new Dulceria();
        dul.setPrecio(prec);
        dul.setCodigo(codi);
        dul.setProducto(produc);
        dul.setDescripcion(des);
        dul.setImagen("imagenes/" + img);

        int status = DulceriaDAO.registraDulceria(dul);

        if (status > 0) {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\": \"success\"}");
            response.sendRedirect("dulceria_admin.jsp");
        } else {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\": \"error\"}");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Dulceria dulc = new Dulceria();
        DulceriaDAO duldao = new DulceriaDAO();
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("AgregarCarrito")){
            cod = request.getParameter("codigo");
            dulc = DulceriaDAO.obtenerDulceria(cod);
            item = item +1;
            car = new Carrito();
            car.setItem(Integer.toString(item));
            car.setIdProducto(dulc.getCodigo());
            car.setNombre(dulc.getProducto());
            car.setDescripcion(dulc.getDescripcion());
            car.setPrecioCompra(dulc.getPrecio());
            car.setCantidad(cantidad);
            car.setSubTotal(cantidad*dulc.getPrecio());
            listaCarrito.add(car);
            totalPagar=0.0;
            for(int i = 0; i<listaCarrito.size(); i++){
                totalPagar = totalPagar+listaCarrito.get(i).getSubTotal();
            }
            
            RequestDispatcher rd = request.getRequestDispatcher("dulceria_usuario.jsp");
            
            HttpSession sesionE = request.getSession();
            HttpSession sesionT = request.getSession();
            HttpSession sesionC = request.getSession();
            sesionE.setAttribute("listaC", listaCarrito);
            sesionT.setAttribute("pagoTotal", totalPagar);
            sesionC.setAttribute("cantidad", listaCarrito.size());
                
            rd.forward(request, response); 
        }

        if (accion.equalsIgnoreCase("Pagar")) {
            String codUsuario = request.getParameter("codigoU");
            boolean compr = false;
            
            LocalDate fechaActual = LocalDate.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
            for(int i = 0; i<listaCarrito.size(); i++){
                //Registra primero el carrito
                String cCarrito = ProductoDAO.obtenerCorrelativo();
                String cUsuario = codUsuario;
                String cDulceria = listaCarrito.get(i).getIdProducto();
                int cantidad = listaCarrito.get(i).getCantidad();
                
                Producto pro = new Producto();
                pro.setCodCarrito(cCarrito);
                pro.setCodDulceria(cDulceria);
                pro.setCantidad(cantidad);
                 
                int status = ProductoDAO.registraProducto(pro);
                
                if (status > 0) {
                    //registra compra
                    String cCompra;
                    if(!compr){
                        cCompra = CompraDAO.obtenerCorrelativo();
                    }else{
        
                    }
                    
                    double total = totalPagar;
                    String fechaCompra = fechaActual.format(formatter); ;
                    Compra comp = new Compra();
                    
     
                    comp.setCodUusario(cUsuario);
                    comp.setTotal(total);
                    comp.setFechaCompra(fechaCompra);
                    
                    int status2 = CompraDAO.registraDetalleCompra(comp);
                    
                    if (status2 > 0) {
                        //registra detalle compra
                        String cDetComp = DetalleCompraDAO.obtenerCorrelativo();
                        String carPel = " ";
                        String carProm = " ";
                        
                        DetalleCompra detcomp = new DetalleCompra();
                        detcomp.setCodDetComp(cDetComp);

                        detcomp.setCarPelicula(carPel);
                        detcomp.setCarDulceria(cDulceria);
                        detcomp.setCarPromocion(carProm);
                        detcomp.setCantidad(cantidad);
                        
                        
                        int status3 = DetalleCompraDAO.registraCompra(detcomp);
                        if (status3 > 0) {
                            //redirecciona al index
                            response.sendRedirect("index.jsp");
                        }
                    }
                }
                
            }
        }
        
        if (accion.equalsIgnoreCase("Editar")) {
            response.sendRedirect("butacas_usuario.jsp");
        }
        if (accion.equalsIgnoreCase("Eliminar")) {
            Dulceria dul = new Dulceria();
            String codigo = request.getParameter("codigo");
            dul.setCodigo(codigo);
            String nombrei = DulceriaDAO.obtenerNombreImagenPorCodigo(codigo);
            String ruta = request.getServletContext().getRealPath("");
            Path rutaI = Paths.get(ruta, nombrei);
            DulceriaDAO.borrarDulceria(codigo);
            Files.delete(rutaI);
            response.sendRedirect("dulceria_admin.jsp");
        } 
    }
}
