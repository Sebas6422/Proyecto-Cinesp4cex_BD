<%-- 
    Document   : rh_admin
    Created on : 7 oct. 2023, 06:31:57
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
        <!-- start: Icons -->
        <!-- start: CSS -->
        <link rel="stylesheet" href="css_admin/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <link rel="stylesheet" href="css_admin/StyleEmple.css">

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>

        <!-- end: CSS -->
        <title>Vistas de Dulceria</title>
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
                <div class="table">
                    <section class="table__header">
                        <h1>Lista de Postulantes</h1>
                        <div class="container-input">
                            <input type="text" style="margin-left: 40px;" id="miBarraDeBusqueda" placeholder="Search" name="text"
                                   class="input">
                            <svg id="miIconoDeBusqueda"  style="margin-left: 45px;"   fill="#000000" width="17px" height="17px"
                                 viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M790.588 1468.235c-373.722 0-677.647-303.924-677.647-677.647 0-373.722 303.925-677.647 677.647-677.647 373.723 0 677.647 303.925 677.647 677.647 0 373.723-303.924 677.647-677.647 677.647Zm596.781-160.715c120.396-138.692 193.807-319.285 193.807-516.932C1581.176 354.748 1226.428 0 790.588 0S0 354.748 0 790.588s354.748 790.588 790.588 790.588c197.647 0 378.24-73.411 516.932-193.807l516.028 516.142 79.963-79.963-516.142-516.028Z"
                                fill-rule="evenodd"></path>
                            </svg>
                        </div>
                    </section>
                    <section class="table__body">
                        <table>
                            <thead>
                                <tr>
                                    <th class="text-center"> Id </th>
                                    <th class="text-center"> Nombre </th>
                                    <th class="text-center"> Apellido </th>
                                    <th class="text-center"> Edad </th>
                                    <th class="text-center"> Distrito </th>
                                    <th class="text-center"> Telefono </th>
                                    <th class="text-center"> Correo </th>
                                    <th class="text-center"> Cargo </th>
                                    <th class="text-center"> CV </th>
                                    <th class="text-center"> Realizar <br>entrevista </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center"> P0001 </td>
                                    <td class="text-center"> Gabriel</td>
                                    <td class="text-center"> Phoenix </td>
                                    <td class="text-center"> 22 </td>
                                    <td class="text-center"> San Juan de Lurigancho </td>
                                    <td class="text-center"> 958744021</td>
                                    <td class="text-center"> Gabrieldroxus@gmail.com </td>
                                    <td class="text-center"> Boleteria </td>
                                    <td class="text-center">
                                        <button type="submit" id="btnGuardar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-center"> P0002 </td>
                                    <td class="text-center"> Jhon </td>
                                    <td class="text-center"> Michael </td>
                                    <td class="text-center"> 28 </td>
                                    <td class="text-center"> Lince </td>
                                    <td class="text-center"> 908563121</td>
                                    <td class="text-center"> Jhon_153@gmail.com </td>
                                    <td class="text-center"> Limpieza </td>
                                    <td class="text-center">
                                        <button type="submit" id="btnGuardar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-center"> P0003 </td>
                                    <td class="text-center"> Jose</td>
                                    <td class="text-center"> Espinoza</td>
                                    <td class="text-center"> 27 </td>
                                    <td class="text-center"> San Martin de Porres </td>
                                    <td class="text-center"> 977630159</td>
                                    <td class="text-center"> JosEspinoza45_11@gmail.com </td>
                                    <td class="text-center"> Seguridad</td>
                                    <td class="text-center">
                                        <button type="submit" id="btnGuardar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-center"> P0004</td>
                                    <td class="text-center"> Miguel</td>
                                    <td class="text-center"> Caceres</td>
                                    <td class="text-center"> 26 </td>
                                    <td class="text-center"> San Juan de Lurigancho </td>
                                    <td class="text-center"> 995208741</td>
                                    <td class="text-center"> MiguelCac@gmail.com </td>
                                    <td class="text-center"> Supervisor</td>
                                    <td class="text-center">
                                        <button type="submit" id="btnGuardar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center"> P0005</td>
                                    <td class="text-center"> Luis</td>
                                    <td class="text-center"> Merengues</td>
                                    <td class="text-center"> 30 </td>
                                    <td class="text-center"> Independencia </td>
                                    <td class="text-center"> 999457023</td>
                                    <td class="text-center"> LuchoM_2023@gmail.com </td>
                                    <td class="text-center"> Boleteria</td>
                                    <td class="text-center">
                                        <button type="submit" id="btnGuardar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center"> P0006 </td>
                                    <td class="text-center"> Carlos</td>
                                    <td class="text-center"> sosa</td>
                                    <td class="text-center"> 33 </td>
                                    <td class="text-center"> Villa El Salvador </td>
                                    <td class="text-center"> 961510027</td>
                                    <td class="text-center"> CarlitoSosa99@gmail.com </td>
                                    <td class="text-center"> Limpieza</td>
                                    <td class="text-center">
                                        <button type="button" id="btnDescargar" class="btn btn-dark">Descargar</button>
                                    </td>
                                    <td>
                                        <select id="otrosDatos1" style="padding: 2px; width: 70px; ">
                                            <option value="si">Si</option>
                                            <option value="no">No</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" id="btnEliminar" class="btn btn-light"style=" width: 60px;" ><img src="imagenes_admin/ex.png" style="height:30px; width:50px; margin-right: 7%;"/></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="margin-left: 10px; display: inline-block;" class="text-center">
                            <button id="btnNuevo" type="button" class="btn btn-success" data-toggle="modal" onclick="verInforme()"> Ver Informe</button>
                        </div>
                    </section>
                    <script>
                        function verInforme() {
                            window.location.href = 'informe.jsp';
                        }
                        function descargarPDF() {
                            const doc = new jsPDF();
                            doc.text("Lista de Postulantes", 10, 10);

                            const table = document.querySelector("table");
                            const rows = table.querySelectorAll("tr");
                            let y = 30;

                            for (const row of rows) {
                                const cells = row.querySelectorAll("td");
                                let x = 10;

                                for (const cell of cells) {
                                    doc.text(cell.innerText, x, y);
                                    x += 40;
                                }
                                y += 10;
                            }
                            doc.save("lista_de_postulantes.pdf");
                        }
                        // Obtener todos los botones de eliminar
                        const btnEliminarElements = document.querySelectorAll(".btnEliminar");

                        // Agregar un evento clic a cada botón de eliminar
                        btnEliminarElements.forEach(function (btnEliminar) {
                            btnEliminar.addEventListener("click", function () {
                                // Obtener la fila a eliminar (padre del botón)
                                const filaAEliminar = btnEliminar.parentElement.parentElement;

                                // Eliminar la fila de la tabla
                                filaAEliminar.remove();
                            });
                        });
                    </script>
                </div>
            </div>

            <!-- start: JS -->
            <script src="js_admin/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="js_admin/bootstrap.bundle.min.js"></script>
            <script src="js_admin/script.js"></script>
            <!-- end: JS -->
    </body>

</html>
