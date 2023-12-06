<%-- 
    Document   : opciones_admin
    Created on : 7 oct. 2023, 07:03:42
    Author     : Jaramillo
--%>

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
        <link rel="stylesheet" href="css_admin/styleconfig.css">
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
                <%@include file="perfilAdmin.jsp" %>
                
            </div>
            <iframe class="paso" src="contra.jsp" frameborder="0"></iframe>
            

        </main>
        <!-- end: Main -->





        <!-- start: JS -->
        
        <script src="js_admin/jquery.min.js"></script>
        <script src="js_admin/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js_admin/script.js"></script>

        <!-- end: JS -->

    </body>
</html>
