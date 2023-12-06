<%-- 
    Document   : Promociones
    Created on : 6 oct. 2023, 23:46:18
    Author     : Jaramillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Model.Empleados ,Model.PromocionDAO, Model.Promocion, java.util.List, java.util.LinkedList" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- start: Icons -->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <!-- start: CSS -->
        <link rel="stylesheet" href="css_admin/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <!-- end: CSS -->
        <title>Vista de Usuarios</title>
    </head>
    <%
        PromocionDAO pDAO = new PromocionDAO();
        List<Promocion> lista = new LinkedList<>();
        lista = pDAO.mostrarPromocion();
    %>  
    <body>
        <!-- start: Sidebar -->
        <%@include file="sidebarDashboard.jsp" %>
        <div class="sidebar-overlay"></div>
        <!-- end: Sidebar -->

        <!-- start: Main -->
        <main class="bg-light">
            <div class="p-2">
                <!-- start: Navbar -->
                <%@include file="perfilAdmin.jsp" %>
                <main class="bg-light">
                    <div class="p-2">
                        <h1>Promociones</h1>
                        <div id="formContainer" style="display: flex; justify-content: space-between; align-items: flex-start; margin-left: 450px;">
                            <form class="form" id="employeeForm" method="post" action="ControladorPromocion">
                                <label>
                                    <input class="input" id="cod" name="codigo" type="number" placeholder="" required="">
                                    <span>Cod</span>
                                </label>
                                <label>
                                    <input class="input" id="nombre" name="nombre" type="text" placeholder="" required="">
                                    <span>Nombre</span>
                                </label>
                                <label>
                                    <input class="input" type="text" id="descripcion" name="descripcion" placeholder="" required="">
                                    <span>Descripción</span>
                                </label>
                                <div class="from-group" style="margin-right: 1000px;">
                                    <label>Imagen de promocion</label>
                                    <input type="file" name="fileImagen">
                                </div>
                                <div style="text-align: center;">
                                    <input style="margin-left: 50px;" class="button" type="submit" value="Añadir">
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </main>
        <!-- end: Main -->

        <!-- start: JS -->
        <script src="js_admin/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js_admin/bootstrap.bundle.min.js"></script>
        <script src="js_admin/script.js"></script>
        <!-- end: JS -->
    </body>
</html>       
