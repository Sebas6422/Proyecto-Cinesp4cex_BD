<%-- 
    Document   : usuario
    Created on : 6 oct. 2023, 22:15:36
    Author     : Jaramillo
--%>
<%@page import="Model.Empleados" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <!-- end: Navbar -->
            </div>
            <div class="usuarios">
                <header>
                    <br>
                    <div class="container">    
                        <%@include file="tablaUsuario.jsp" %>

                    </div>
                </header>
            </div>
        </main>
        <!-- end: Main -->

        <!-- start: JS -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script src="js_admin/script.js"></script>

        <!-- end: JS -->
    </body>
</html>
