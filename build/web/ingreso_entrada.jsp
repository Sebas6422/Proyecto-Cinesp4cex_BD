<%-- 
    Document   : ingreso_entrada
    Created on : 7 oct. 2023, 05:36:56
    Author     : Jaramillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- start: Icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <!-- start: Icons -->
    <!-- start: CSS -->
    <link rel="stylesheet" href="css_admin/bootstrap.min.css">
    <link rel="stylesheet" href="css_admin/style.css">
    <!-- end: CSS -->
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


            <div class="container-input">
                <input type="text" style="margin-left: 40px;"      id="miBarraDeBusqueda" placeholder="Search" name="text"
                    class="input">
                <svg id="miIconoDeBusqueda"  style="margin-left: 45px;"   fill="#000000" width="17px" height="17px"
                    viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M790.588 1468.235c-373.722 0-677.647-303.924-677.647-677.647 0-373.722 303.925-677.647 677.647-677.647 373.723 0 677.647 303.925 677.647 677.647 0 373.723-303.924 677.647-677.647 677.647Zm596.781-160.715c120.396-138.692 193.807-319.285 193.807-516.932C1581.176 354.748 1226.428 0 790.588 0S0 354.748 0 790.588s354.748 790.588 790.588 790.588c197.647 0 378.24-73.411 516.932-193.807l516.028 516.142 79.963-79.963-516.142-516.028Z"
                        fill-rule="evenodd"></path>
                </svg>
             </div>

              <div class="container" style="margin-top: 30px;">
                    <table class="table table-striped table-bordered table-condensed" style="width:100%">
                        <thead class="text-center">
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Portada</th>
                                <th class="text-center">Pelicula</th>
                                <th class="text-center">Fecha</th>
                                <th class="text-center">Entradas Vendidas</th>
                                <th class="text-center">Precio por Entrada</th>
                                <th class="text-center">Total de Ingresos</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/fivenight.jpg" >

                                <td class="text-center">Five Nights At Freddy's</td>
                            <td class="text-center">07-10-23</td>
                            <td class="text-center">150</td>
                            <td class="text-center">s/. 20.00</td>
                            <td class="text-center">s/. 3,000.00 </td>
                        </tr>                                
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/sawx.jpg" >

                                <td class="text-center">Saw X: El juego del miedo</td>
                            <td class="text-center">07-10-23</td>
                            <td class="text-center">200</td>
                            <td class="text-center">s/. 20.00</td>
                            <td class="text-center">s/. 4,000.00 </td>
                        </tr>   
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/lamonja.jpg" >

                                <td class="text-center">La Monja</td>
                            <td class="text-center">07-10-23</td>
                            <td class="text-center">200</td>
                            <td class="text-center">s/. 20.00</td>
                            <td class="text-center">s/. 4,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/oppenheimer.jpg" >

                                <td class="text-center">Oppenheimer</td>
                                <td class="text-center">07-10-23</td>
                                <td class="text-center">250</td>
                                <td class="text-center">s/. 30.00</td>
                                <td class="text-center">s/. 7,550.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/barbie.jpg" >

                                <td class="text-center">Barbie</td>
                                <td class="text-center">07-10-23</td>
                                <td class="text-center">300</td>
                                <td class="text-center">s/. 30.00</td>
                                <td class="text-center">s/. 9,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">6</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/avatar-2.jpg" >

                                <td class="text-center">Avatar 2</td>
                                <td class="text-center">07-10-23</td>
                        <td class="text-center">500</td>
                        <td class="text-center">s/. 30.00</td>
                        <td class="text-center">s/. 15,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/bluebeetle.jpg" >

                                <td class="text-center">Blue Beetle</td>
                                <td class="text-center">07-10-23</td>
                        <td class="text-center">400</td>
                        <td class="text-center">s/. 15.00</td>
                        <td class="text-center">s/. 6,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">8</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/mariobros.jpg" >

                                <td class="text-center">Mario Bros Movie</td>
                                <td class="text-center">07-10-23</td>
                        <td class="text-center">400</td>
                        <td class="text-center">s/. 15.00</td>
                        <td class="text-center">s/. 6,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">9</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/elementos.jpg" >

                                <td class="text-center">Elementos</td>
                                <td class="text-center">07-10-23</td>
                        <td class="text-center">600</td>
                        <td class="text-center">s/. 20.00</td>
                        <td class="text-center">s/. 12,000.00 </td>
                        </tr>  
                        <tr>
                            <td class="text-center">10</td>
                            <td class="text-center">
                                <img class="navbar-profile-image"   src="imagenes_admin/spiderman.jpg" >

                                <td class="text-center">Spider-Man: A trávez del Spider-Verso</td>
                                <td class="text-center">07-10-23</td>
                        <td class="text-center">1000</td>
                        <td class="text-center">s/. 20.00</td>
                        <td class="text-center">s/. 20,000.00 </td>
                        </tr>  
                        </tbody>
                    </table>
                   
              </div>
              <script>
                $(document).ready(function() {
                  $("#miBarraDeBusqueda").on("keyup", function() {
                    var searchText = $(this).val().toLowerCase(); // Obtener el texto de búsqueda en minúsculas
                    $("table tr").each(function() {
                      var rowData = $(this).text().toLowerCase(); // Obtener el contenido de la fila en minúsculas
                      if (rowData.indexOf(searchText) === -1) {
                        $(this).hide(); // Ocultar la fila si no coincide con la búsqueda
                      } else {
                        $(this).show(); // Mostrar la fila si coincide con la búsqueda
                      }
                    });
                  });
                });
                </script>
                
            </nav>
            
        </div>
    </main>
    <!-- start: JS -->
    <script src="js_admin/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js_admin/bootstrap.bundle.min.js"></script>
    <script src="js_admin/script.js"></script>
    <!-- end: JS -->
</body>

</html>
