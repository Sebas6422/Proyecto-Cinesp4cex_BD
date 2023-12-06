<%-- 
    Document   : perfilAdmin
    Created on : 21 nov. 2023, 15:28:10
    Author     : Jaramillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        Empleados emple = (Empleados) session.getAttribute("usuarioE");
    %>
    <!-- start: Navbar -->
    <nav class="px-3 py-2 bg-white rounded shadow-sm">
        <i class="ri-menu-line sidebar-toggle me-3 d-block d-md-none"></i>
        <h5 class="fw-bold mb-0 me-auto">Dashboard</h5>
        <div class="dropdown">
            <div class="d-flex align-items-center cursor-pointer dropdown-toggle" data-bs-toggle="dropdown"
                 aria-expanded="false">
                <span class="me-2 d-none d-sm-block"><%= emple.getNombres()%></span>
                <img class="navbar-profile-image"
                     src="<%= emple.getImagen()%>">
            </div>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="opciones_admin.jsp">Opciones</a></li>
                <li><a class="dropdown-item" href="index.jsp" value="Salir">Salir</a></li>
            </ul>
        </div>
    </nav>
    <!-- end: Navbar -->
</html>
