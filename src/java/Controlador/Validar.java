/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.EmpleadoDAO;
import Model.Empleados;
import Model.Usuario;
import Model.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {
    EmpleadoDAO edao = new EmpleadoDAO();
    Empleados em = new Empleados();
    Usuario usu = new Usuario();
    UsuarioDAO usudao = new UsuarioDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String act = request.getParameter("accion");
        
        if(act.equalsIgnoreCase("Ingresar")){
            String us = request.getParameter("usuario");
            String psw = request.getParameter("password"); 
            em = edao.validar(us, psw);
            if(em.getUsuario() != null){
                RequestDispatcher rd = request.getRequestDispatcher("dashboard_admin.jsp");
                
                request.setAttribute("usuario", em);
                HttpSession sesionE = request.getSession();
                sesionE.setAttribute("usuarioE", em);
                
                rd.forward(request, response);
            }else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
        
        if(act.equalsIgnoreCase("Entrar")){
            String us = request.getParameter("usuarioU");
            String psw = request.getParameter("passwordU"); 
            usu = usudao.validar(us, psw);
            if(usu.getCorreo() != null){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                
                request.setAttribute("usuario", usu);
                
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuarioC", usu);
                
                rd.forward(request, response);
            }else{
                request.getRequestDispatcher("promociones_usuario.jsp").forward(request, response);
            }
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    } 
}
