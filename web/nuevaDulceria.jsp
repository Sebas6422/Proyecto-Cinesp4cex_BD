<!DOCTYPE html>
<html lang="en">
    <%@page import="Model.Empleados ,Model.DulceriaDAO, Model.Dulceria, java.util.List, java.util.LinkedList" %>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- start: Icons -->
        <link href="https://cdn.jsdelivr.net/npm    /remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <!-- start: Icons -->
        <!-- start: CSS -->
        <link rel="stylesheet" href="css_admin/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <link rel="stylesheet" href="css_admin/StyleEmple.css">
        <!-- end: CSS -->
        <title>Vistas de Dulceria</title>
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
                <main class="bg-light">
                    <div class="p-2">
                        <div id="formContainer" style="display: grid; justify-content: space-between; align-items: flex-start; margin-right: 450px; ">
                            <form method="POST" name="registrarDulceria" class="form" action="ControladorDulceria" enctype="multipart/from-data">
                                <div class="card-body">
                                    <div class="from-group">
                                        <label>
                                            <input class="input" id="cod" name="cod" type="number" style="text-align: center;" placeholder="" required="">
                                            <span>Cod</span>
                                        </label>
                                    </div>
                                    <div class="from-group">
                                        <label> 
                                            <input class="input" id="nombre" name="nombre" type="text" style="text-align: center;" placeholder="" required="">
                                            <span>Producto</span>
                                        </label>
                                    </div>
                                    <div class="from-group">
                                        <label>
                                            <input class="input" type="text" id="descripcion" name="descripcion" style="text-align: center;"placeholder="" required="">
                                            <span>Descripción</span>
                                        </label>
                                    </div>
                                    <div class="from-group">
                                        <label>
                                            <input class="input" type="text" name="precio" style="text-align: center;"  required="">
                                            <span>Precio</span>
                                        </label>
                                    </div>
                                    <div class="from-group" style="margin-right: 1000px;">
                                        <label>Imagen de promocion</label>
                                        <input type="file" name="fileImagen">
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div style="text-align: center;">
                                        <input type="submit" name="accion" value="Añadir">
                                    </div>
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