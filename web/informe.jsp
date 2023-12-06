<%-- 
    Document   : informe
    Created on : 7 oct. 2023, 08:51:00
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
                <!-- start: Navbar -->
                <nav class="px-3 py-2 bg-white rounded shadow-sm">
                    <i class="ri-menu-line sidebar-toggle me-3 d-block d-md-none"></i>
                    <h5 class="fw-bold mb-0 me-auto">Dashboard</h5>
                    <div class="dropdown">
                        <div class="d-flex align-items-center cursor-pointer dropdown-toggle" data-bs-toggle="dropdown"
                             aria-expanded="false">
                            <span class="me-2 d-none d-sm-block">John Doe</span>
                            <img class="navbar-profile-image"
                                 src="imagenes_usuario/psyduck.jpg">
                        </div>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="opciones_admin.jsp">Opciones</a></li>
                            <li><a class="dropdown-item" href="index.jsp">Salir</a></li>
                        </ul>
                    </div>
                </nav>
                <!-- end: Navbar -->
                <div class="postulantes">
                    <h1>Informe de Procesos de Contratación</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>Datos del Postulante</th>
                                <th>Área Postulada</th>
                                <th>Entrevista</th>
                                <th>Entregó su CV</th>
                                <th>Carnet de <br> Sanidad</th>
                                <th>Antecedentes <br> Policiales</th>
                                <th>Entregó <br> Otros Datos</th>
                                <th>Resultado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Angelo Lozano</td>
                                <td>Seguridad</td>
                                <td><input type="checkbox" id="entrevista1" checked></td>
                                <td><input type="checkbox" id="cv1" checked></td>
                                <td><input type="checkbox" id="carnet1" checked></td>
                                <td><input type="checkbox" id="antecedentes1" checked></td>
                                <td>
                                    <select id="otrosDatos1">
                                        <option value="si">Si</option>
                                        <option value="no">No</option>
                                    </select>
                                </td>
                                <td>
                                    <select id="resultado1">
                                        <option value="aceptado">Aceptado</option>
                                        <option value="aceptado">En proceso</option>
                                        <option value="rechazado">Rechazado</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Fabian Soca</td>
                                <td>Boleteria</td>
                                <td><input type="checkbox" id="entrevista2" checked></td>
                                <td><input type="checkbox" id="cv2" checked></td>
                                <td><input type="checkbox" id="carnet2"></td>
                                <td><input type="checkbox" id="antecedentes2"></td>
                                <td>
                                    <select id="otrosDatos2">
                                        <option value="si">Si</option>
                                        <option value="no">No</option>
                                    </select>
                                </td>
                                <td>
                                    <select id="resultado2">
                                        <option value="aceptado">Aceptado</option>
                                        <option value="aceptado" selected>En proceso</option>
                                        <option value="rechazado">Rechazado</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Roger Ñoclito</td>
                                <td>Cajas</td>
                                <td><input type="checkbox" id="entrevista3" ></td>
                                <td><input type="checkbox" id="cv3"></td>
                                <td><input type="checkbox" id="carnet3"></td>
                                <td><input type="checkbox" id="antecedentes3"></td>
                                <td>
                                    <select id="otrosDatos3">
                                        <option value="si">Si</option>
                                        <option value="no" selected>No</option>
                                    </select>
                                </td>
                                <td>
                                    <select id="resultado3">
                                        <option value="">Aceptado</option>
                                        <option value="">En proceso</option>
                                        <option value="rechazado" selected>Rechazado</option>
                                    </select>
                                </td>
                            </tr>
                        <td>Julio Cuba</td>
                        <td>Supervisor</td>
                        <td><input type="checkbox" id="entrevista2" checked></td>
                        <td><input type="checkbox" id="cv2"></td>
                        <td><input type="checkbox" id="carnet2" checked></td>
                        <td><input type="checkbox" id="antecedentes2"></td>
                        <td>
                            <select id="otrosDatos2">
                                <option value="si" selected>Si</option>
                                <option value="no">No</option>
                            </select>
                        </td>
                        <td>
                            <select id="resultado2">
                                <option value="aceptado">Aceptado</option>
                                <option value="aceptado" selected>En proceso</option>
                                <option value="rechazado">Rechazado</option>
                            </select>
                        </td>
                        </tr>
                        <tr>
                            <td>Aldair de la cruz</td>
                            <td>Boleteria</td>
                            <td><input type="checkbox" id="entrevista2"></td>
                            <td><input type="checkbox" id="cv2"></td>
                            <td><input type="checkbox" id="carnet2" checked></td>
                            <td><input type="checkbox" id="antecedentes2" checked></td>
                            <td>
                                <select id="otrosDatos2">
                                    <option value="si">Si</option>
                                    <option value="no">No</option>
                                </select>
                            </td>
                            <td>
                                <select id="resultado2">
                                    <option value="aceptado">Aceptado</option>
                                    <option value="aceptado" selected>En proceso</option>
                                    <option value="rechazado">Rechazado</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Ivan Quezada</td>
                            <td>Pgc</td>
                            <td><input type="checkbox" id="entrevista2" checked></td>
                            <td><input type="checkbox" id="cv2" checked></td>
                            <td><input type="checkbox" id="carnet2" checked></td>
                            <td><input type="checkbox" id="antecedentes2"></td>
                            <td>
                                <select id="otrosDatos2">
                                    <option value="si" selected>Si</option>
                                    <option value="no">No</option>
                                </select>
                            </td>
                            <td>
                                <select id="resultado2">
                                    <option value="aceptado">Aceptado</option>
                                    <option value="aceptado" selected>En proceso</option>
                                    <option value="rechazado">Rechazado</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Sebastian Neciosup</td>
                            <td>Administrador</td>
                            <td><input type="checkbox" id="entrevista2" checked></td>
                            <td><input type="checkbox" id="cv2" checked></td>
                            <td><input type="checkbox" id="carnet2"></td>
                            <td><input type="checkbox" id="antecedentes2" checked></td>
                            <td>
                                <select id="otrosDatos2">
                                    <option value="si">Si</option>
                                    <option value="no" selected>No</option>
                                </select>
                            </td>
                            <td>
                                <select id="resultado2">
                                    <option value="aceptado">Aceptado</option>
                                    <option value="aceptado">En proceso</option>
                                    <option value="rechazado"select>Rechazado</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Jade Ismiño</td>
                            <td>Publicidad</td>
                            <td><input type="checkbox" id="entrevista2" checked></td>
                            <td><input type="checkbox" id="cv2" checked></td>
                            <td><input type="checkbox" id="carnet2" checked></td>
                            <td><input type="checkbox" id="antecedentes2" checked></td>
                            <td>
                                <select id="otrosDatos2">
                                    <option value="si" selected>Si</option>
                                    <option value="no">No</option>
                                </select>
                            </td>
                            <td>
                                <select id="resultado2">
                                    <option value="aceptado"select>Aceptado</option>
                                    <option value="aceptado">En proceso</option>
                                    <option value="rechazado">Rechazado</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            </tbody>
                    </table>
                    <div style="margin-left: 10px; display: inline-block;" class="text-center">
                        <button id="btnNuevo" type="button" class="btn btn-success" data-toggle="modal" onclick="verInforme()"> Atras</button>
                    </div>
                </div>
                <script src="script.js"></script>
                <script>
                        function verInforme() {
                            window.location.href = 'rh_admin.jsp';
                        }
                </script>
            </div>

            <!-- start: JS -->
            <script src="js_admin/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="js_admin/bootstrap.bundle.min.js"></script>
            <script src="js_admin/script.js"></script>
            <!-- end: JS -->
    </body>
</html>
