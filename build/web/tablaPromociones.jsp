<%-- 
    Document   : tabla2
    Created on : 21 nov. 2023, 12:38:32
    Author     : Jaramillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.PromocionDAO, Model.Promocion, java.util.List, java.util.LinkedList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- jQuery -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css_admin/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.4/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css_admin/style.css">
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.70/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.70/vfs_fonts.js"></script>
    </head>
    <body>
        <style>
            .cars {
                width: 98%;
                background: white;
                border-radius: 10px;
                transition: border-radius 1.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
                margin: 20px auto; /* Centrar el contenedor "cars" y agregar márgenes superior e inferior */
                padding-left: 1%;
                padding-right: 1%;
            }

            #example_wrapper {
                margin: 20px;
            }

            #example th,
            #example td {
                border: 1px solid #dee2e6;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

            #example thead th {
                background-color: #007bff;
                color: #ffffff;
            }
            .input-container {
                width: 220px;
                position: relative;
            }

            .icon {
                position: absolute;
                right: 10px;
                top: calc(50% + 5px);
                transform: translateY(calc(-50% - 5px));
            }

            .input {
                width: 100%;
                height: 40px;
                padding: 10px;
                transition: .2s linear;
                border: 2.5px solid black;
                font-size: 14px;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            .input:focus {
                outline: none;
                border: 0.5px solid black;
                box-shadow: -5px -5px 0px black;
            }

            .input-container:hover > .icon {
                animation: anim 1s linear infinite;
            }

            @keyframes anim {
                0%,
                100% {
                    transform: translateY(calc(-50% - 5px)) scale(1);
                }

                50% {
                    transform: translateY(calc(-50% - 5px)) scale(1.1);
                }
            }
            .botones{
                margin-right: 50px;
                margin-left: 50px;
            }
            div.dataTables_wrapper div.dataTables_filter {
                display: none;
            }

        </style>


        <div class="cars shadow">
            <div class="card-body">
                <div class="table-responsive">
                    <h2 style="margin-top: 30px;">Lista de Promociones</h2>    
                    <!-- Barra de búsqueda personalizada -->
                    <div class="botones">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <div class="input-container">
                                <input id="custom-search" type="text" name="text" class="input" placeholder="search...">
                                <span class="icon"> 
                                    <svg width="19px" height="19px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path opacity="1" d="M14 5H20" stroke="#000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path opacity="1" d="M14 8H17" stroke="#000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M21 11.5C21 16.75 16.75 21 11.5 21C6.25 21 2 16.75 2 11.5C2 6.25 6.25 2 11.5 2" stroke="#000" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"></path> <path opacity="1" d="M22 22L20 20" stroke="#000" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                                </span>
                            </div>
                            <div class="text-center mt-3">
                                <button class="btn btn-primary" onclick="redirigirAInsertarDulceria()">
                                    <a href="nuevasPromociones.jsp" style="text-decoration: none; color: inherit;">Insertar Dulceria</a></button>
                                <button class="btn btn-danger" id="export-pdf">Exportar a PDF</button>
                                <button class="btn btn-success" id="export-excel">Exportar a Excel</button>
                            </div>
                        </div>
                    </div>
                    <table id="example" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Descripcion</th>
                                <th class="text-center">Imagen</th>
                                <th class="text-center">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Los datos de las peliculas se agregarán aquí dinámicamente -->
                            <%                                       
                                if(lista != null){
                                    for(int i=0; i<lista.size(); i++){                                  
                            %>
                            <tr>
                                <th><%= lista.get(i).getCodigo() %></th>
                                <th><%= lista.get(i).getNombre() %></th>
                                <th><%= lista.get(i).getDescripcion() %></th>
                                <th><img src="<%= lista.get(i).getImagen() %>"" height="50" width="50"></th>
                                <td class="text-center">
                                    <button class="btn btn-sm btn-primary">
                                        <i class="bi bi-pencil-square"></i>
                                    </button>
                                    <a href="ControladorPromocion?accion=Eliminar&codigo=<%= lista.get(i).getCodigo() %>">
                                        <button class="btn btn-sm btn-danger">
                                            <i class="bi bi-x-square"></i>
                                        </button>
                                    </a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                    <!-- Script de configuración -->
                    <script>
                        $(document).ready(function () {
                            var table = $('#example').DataTable({
                                language: {
                                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-MX.json',
                                },
                                responsive: true,
                                dom: 'Bfrtip',
                                buttons: [
                                    {
                                        extend: 'excel',
                                        className: 'btn btn-success',
                                        text: 'Exportar a Excel'
                                    },
                                    {
                                        extend: 'pdfHtml5',
                                        className: 'btn btn-danger',
                                        text: 'Exportar a PDF',
                                        customize: function (doc) {
                                            // Agregar el nombre de tu empresa en la parte superior del PDF
                                            doc.content.splice(0, 0, {
                                                text: 'CINE SP4SEX',
                                                fontSize: 16,
                                                alignment: 'center',
                                                margin: [0, 0, 0, 12] // Margen inferior
                                            });

                                            // Personalizar estilos de la tabla en el PDF
                                            var table = $('#example').DataTable();
                                            var rows = table.rows().data();
                                            var body = [];

                                            // Agregar los datos de la tabla al cuerpo del PDF
                                            for (var i = 0; i < rows.length; i++) {
                                                var row = [];
                                                for (var j = 0; j < rows[i].length; j++) {
                                                    row.push(rows[i][j]);
                                                }
                                                body.push(row);
                                            }

                                            // Agregar la tabla al documento PDF
                                            doc.content.push({
                                                table: {
                                                    headerRows: 1,
                                                    body: body
                                                },
                                                layout: 'lightHorizontalLines', // Estilo de línea horizontal
                                                margin: [0, 12, 0, 0] // Margen superior
                                            });
                                        }
                                    },
                                    {
                                        extend: 'print',
                                        className: 'btn btn-primary',
                                        text: 'Imprimir'
                                    },
                                ],
                                columnDefs: [
                                    {width: '5%', targets: 0},
                                    {width: '5%', targets: 1},
                                    {width: '5%', targets: 2},
                                    {width: '10%', targets: 3},
                                    {width: '15%', targets: 4},
                                ],
                                initComplete: function () {
                                    // Ocultar los botones de exportación e impresión por defecto después de la inicialización completa
                                    $('.buttons-html5, .buttons-print').addClass('d-none');
                                },
                            });

                            // Manejar clic en botones personalizados
                            $('#export-pdf').on('click', function () {
                                table.button(1).trigger();
                            });

                            $('#export-excel').on('click', function () {
                                table.button(0).trigger();
                            });

                            $('#print-table').on('click', function () {
                                table.button(2).trigger();
                            });

                            // Configurar la búsqueda personalizada
                            $('#custom-search').on('keyup', function () {
                                table.search(this.value).draw();
                            });
                        });
                    </script>
                    <script>
                        function redirigirAInsertarDulceria() {
                            window.location.href = 'nuevasPromociones.jsp'; // Reemplaza 'insertarEmpleado.jsp' con la ruta correcta de tu JSP destino
                        }
                    </script>
                    <!-- Fin de Script de configuración -->
                </div>
            </div>
        </div>  
    </body>
</html>
