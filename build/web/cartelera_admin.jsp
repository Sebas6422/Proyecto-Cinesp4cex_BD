<%-- 
    Document   : cartelera
    Created on : 6 oct. 2023, 22:51:05
    Author     : Jaramillo
--%>

<%@page import="Model.Empleados, Model.PeliculaDAO, Model.Pelicula, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- start: Icons -->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <!-- start: Icons -->
        <!-- start: CSS -->
        <link rel="stylesheet" href="css_admin/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <link href="Bootstrap/datatables.min.css" rel="stylesheet">
        <!-- end: CSS -->
        <!-- start: CSS Empleado -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css_admin/StyleEmple.css">
        <!-- end: CSS Empleado -->
        <title>Cartelera</title>
    </head>
    <%
        PeliculaDAO pDAO = new PeliculaDAO();
        List<Pelicula> lista = new LinkedList<>();
        lista = pDAO.mostrarPelicula();
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
                <%@include file="tablaCartelera.jsp" %>
            </div>

        </div>
        <script>
            // Tu lógica para agregar una nueva imagen y luego...
            $.ajax({
                type: 'POST',
                url: 'URL_DEL_SERVLET',
                data: {/* Tus datos de solicitud si es necesario */},
                success: function (response) {
                    if (response.status === 'success') {
                        // La operación fue exitosa, actualiza la tabla aquí
                        // Puedes utilizar jQuery u otras bibliotecas/frameworks para manipular el DOM
                        // Por ejemplo, si estás usando jQuery y la tabla tiene un ID 'tablaImagenes'
                        $('#tablaImagenes').load(' #tablaImagenes');
                    } else {
                        // La operación falló, manejar según sea necesario
                    }
                },
                error: function (xhr, status, error) {
                    // Manejar errores de la solicitud AJAX
                }
            });
        </script>
    </main>
    <!-- end: Main -->

    <!-- start: JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js_admin/bootstrap.bundle.min.js"></script>
    <script src="js_admin/script.js"></script>
    <!-- end: JS -->

</body>
</html>
