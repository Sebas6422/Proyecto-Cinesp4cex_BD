<%-- 
    Document   : index
    Created on : 6 oct. 2023, 22:36:50
    Author     : USER
--%>
<%@page import="Model.Usuario ,Model.PeliculaDAO, Model.Pelicula, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">
        <link rel="stylesheet" href="css_usuario/modals_usuario.css">
        <title>Cine Sp4cex</title>
    </head>
    <body>

        <%@include file="encabezado_usuario.jsp" %>

        <section class="carousel_section">
            <div class="contenido">
                <div class="carousel">
                    <input type="radio" name="slides" checked="checked" id="slide-1">
                    <input type="radio" name="slides" id="slide-2">
                    <input type="radio" name="slides" id="slide-3">
                    <input type="radio" name="slides" id="slide-4">
                    <input type="radio" name="slides" id="slide-5">
                    <input type="radio" name="slides" id="slide-6">
                    <ul class="carousel__slides">
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadafnaf.jpg" alt="">
                                </div>
                                <figcaption>
                                </figcaption>
                            </figure>
                        </li>
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadasaw.jpg" alt="">
                                </div>
                                <figcaption>
                                </figcaption>
                            </figure>
                        </li>
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadamon.jpg" alt="">
                                </div>
                                <figcaption>

                                </figcaption>
                            </figure>
                        </li>
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadahp.jpg" alt="">
                                </div>
                                <figcaption>

                                </figcaption>
                            </figure>
                        </li>
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadaopen.jpg" alt="">
                                </div>
                                <figcaption>
                                </figcaption>
                            </figure>
                        </li>
                        <li class="carousel__slide">
                            <figure>
                                <div>
                                    <img src="imagenes_usuario/portadabar.jpg" alt="">
                                </div>
                                <figcaption>

                                </figcaption>
                            </figure>
                        </li>
                    </ul>


                    <ul class="carousel__thumbnails">
                        <li style="margin-right: 50px;" id="margen_1">
                            <label for="slide-1" ><img src="imagenes_usuario/icono fnaf.jpg" alt="" id="img_1" style="opacity: 0.8;"></label>
                        </li>
                        <li style="margin-right: 50px;" id="margen_2">
                            <label for="slide-2"><img src="imagenes_usuario/sawicono.jpg" alt="" id="img_2" style="opacity: 0.8;"></label>
                        </li>                    
                        <li style="margin-right: 50px;" id="margen_3">
                            <label for="slide-3"><img src="imagenes_usuario/monjaicono.jpg" alt="" id="img_3" style="opacity: 0.8;"></label>
                        </li>
                        <li style="margin-right: 50px;" id="margen_4">
                            <label for="slide-4"><img src="imagenes_usuario/hdpicono.jpg" alt="" id="img_4" style="opacity: 0.8;"></label>
                        </li>
                        <li style="margin-right: 50px;" id="margen_5">
                            <label for="slide-5"><img src="imagenes_usuario/opicono.jpg" alt="" id="img_5" style="opacity: 0.8;"></label>
                        </li>
                        <li style="margin-right: 50px;" id="margen_6">
                            <label for="slide-6"><img src="imagenes_usuario/baicono.jpg" alt="" id="img_6" style="opacity: 0.8;"></label>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- **************PELICULAS*********************** -->
        <style>
            .pelicula-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around;
                margin-top: 50px;
            }

            .peliculas_comprar {
                margin: 10px;
                width: calc(25% - 20px);
                box-sizing: border-box;
            }

            @media (max-width: 1200px) {
                .peliculas_comprar {
                    width: calc(33.33% - 20px);
                }
            }

            @media (max-width: 768px) {
                .peliculas_comprar {
                    width: calc(50% - 20px);
                }
            }

            @media (max-width: 480px) {
                .peliculas_comprar {
                    width: calc(100% - 20px);
                }
            }
            
             .modal-dialog {
        margin: -100px auto; /* Adjust the top margin to move the modal higher */
    }

    .modal-content {
        width: 100%;
    }
        </style>

        <div class="titulo-container">
            <div class="titulo">
                <h1>PELICULAS</h1>
            </div>
        </div>

        <div class="pelicula-container">
            <%
                PeliculaDAO pDAO = new PeliculaDAO();
                List<Pelicula> lista = new LinkedList<>();
                lista = pDAO.mostrarPelicula();
            %>

            <% for (int i = 0; i < lista.size(); i++) { %>
            <div class="peliculas_comprar">
                <ul style="display: block; list-style: none;">
                    <li>
                        <div class="contened">
                            <figure>
                                <img src="<%= lista.get(i).getImagen() %>" alt="">
                                <div class="capa">
                                    <a class="button" href="butacas_usuario.jsp">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="svg-icon" height="1em" viewBox="0 0 512 512"><!-- ... --></svg>                                        
                                        <span class="lable">Comprar</span>
                                    </a>
                                    <a><button class="button" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal<%= i + 1 %>" style="background-color: blue;">
                                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!-- ... --></svg>                                       
                                            <span class="lable">Detalles</span>
                                        </button></a>>
                                </div>
                            </figure>
                        </div>
                    </li>
                </ul>
            </div>



            <!--CREACION DE MODALS PARA MOSTRAR LOS DETALLES DE LA PELICULA PARA SU AVALIACION-->
            <!-- Modal Mario-->
            <div class="modal fade" id="exampleModal<%= i + 1 %>" tabindex="-1" aria-labelledby="exampleModalLabel<%= i + 1 %>" aria-hidden="true">
    <div class="modal-dialog mx-auto">
        <div class="modal-content" style="width:130%; height: 900px; margin-top: -100px">
                        <div class="contr">
                            <div class="centered">
                                <h1 class="title" style="font-family: 'Dela Gothic One';"><%= lista.get(i).getNombreP() %></h1>
                                <div class="movie-details">
                                    <img src="<%= lista.get(i).getImagen() %>" alt="Título de la Película">
                                    <div class="info">
                                        <p><%= lista.get(i).getNombreP() %></p>
                                        <p><%= lista.get(i).getFechaEstreno() %></p>
                                        <p><%= lista.get(i).getClasificacion() %></p>
                                        <p>Director:<%= lista.get(i).getDirector() %></p>
                                        <p>Estado: Activo 4K</p>
                                        <br>
                                        <p>Descripción: Dos hermanos plomeros, Mario y Luigi, caen por las alcantarillas y llegan a un mundo subterráneo mágico en el que deben enfrentarse al malvado Bowser para rescatar a la princesa Peach, quien ha sido forzada a aceptar casarse con él.</p>
                                        <br>
                                        <div class="rating">
                                            <input value="5" name="rate" id="star5" type="radio">
                                            <label title="text" for="star5"></label>
                                            <input value="4" name="rate" id="star4" type="radio">
                                            <label title="text" for="star4"></label>
                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                            <label title="text" for="star3"></label>
                                            <input value="2" name="rate" id="star2" type="radio">
                                            <label title="text" for="star2"></label>
                                            <input value="1" name="rate" id="star1" type="radio">
                                            <label title="text" for="star1"></label>
                                        </div>
                                        <br>
                                        <button class="btn btn-1">Comprar ahora!</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <!-- *******************FIN PELICULAS*********************** -->
        <%@include file="footer_usuario.jsp" %>
    </body>
</html>
