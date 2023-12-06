<!DOCTYPE html>
<html lang="en">
    <%@page import="Model.Empleados, Model.DulceriaDAO, Model.Dulceria, java.util.List, java.util.LinkedList" %>
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
        DulceriaDAO dDAO = new DulceriaDAO();
        List<Dulceria> lista = new LinkedList<>();
        lista = dDAO.mostrarDulceria();
    %>
    <body>
        <!-- start: Sidebar -->
        <%@include file="sidebarDashboard.jsp" %>

        <div class="sidebar-overlay"></div>
        <!-- end: Sidebar -->

        <!-- start: Main -->
        <main class="bg-light">
            <div class="p-2">
                <%@include file="perfilAdmin.jsp" %>
                <br>
                <%@include file="tablaDulceria.jsp" %>
            </div>
        </main>
        <!-- end: Main -->

        <!-- start: JS -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script src="js_admin/script.js"></script>
        <!-- end: JS -->
    </body>
</html>