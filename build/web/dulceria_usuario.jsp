
<!DOCTYPE html>
<html>
    <%@page import="Model.Carrito ,Model.DulceriaDAO, Model.Dulceria, java.util.List, java.util.LinkedList" %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">



        <title>Cine Sp4cex</title>
    </head>

    <%
        DulceriaDAO dDAO = new DulceriaDAO();
        List<Dulceria> lista = new LinkedList<>();
        lista = dDAO.mostrarDulceria();
        Integer cantidad = (Integer) session.getAttribute("cantidad");
    %>
    <body>
        <%@include file="encabezado_usuario.jsp" %>
        <div class="dulceria">
            <div class="dulceria_encabezado" style="background-color: aquamarine;">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rowdies&display=swap">
                <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
                <h1 style="font-family: 'Dela Gothic One'; color: rgb(93, 0, 255); margin-left: 30px">Dulceria</h1>
            </div>
            <div class="dulceria_contenido" style="height: 100%;background-color: "#E7ECF0;">
                <div class="dulceria_sede_tarjeta">
                    <div class="sede">
                        <div class="imagen_sede">
                            <img src="imagenes_usuario/psyduck.jpg" alt="">
                            <h2>Cine Sp4cex: ubicacion lima olivos</h2>
                        </div>
                    </div>
                    <div class="dulceria_tarjetas" style="width: 70%;">
                        <div class="combo">
                            <div class="cines_fecha" style="display: flex; margin-top: 20px;">
                                <div class="nombre_cines">
                                    <button class="sedes_nombre"  data-bs-toggle="dropdown" aria-expanded="false" style="display: none;">
                                        <i class="bi bi-geo-alt"></i>
                                        <div style="display: grid; margin: 0; padding: 0;">
                                            <p style="display: grid; margin: 0; padding: 0;">Sede donde retira los productos</p>
                                            <p style="display: grid; margin: 0; padding: 0;" class="sede_nombre">Cine Sp4cex Olivos</p>
                                        </div>
                                        <i class="bi bi-caret-down"></i>
                                    </button>
                                    <ul class="dropdown-menu" style="text-align: start;">
                                        <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex Miraflores</li>
                                        <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex San Isidro</li>
                                        <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex Barranco</li>
                                    </ul>


                                    <div class="btn-group">
                                        <button type="button" class="sedes_nombre" data-bs-toggle="dropdown" aria-expanded="false" style="display: flex;">
                                            <i class="bi bi-geo-alt" style="margin-left: 10px;"></i>
                                            <div style="display: grid; margin: 0 10px 0; padding: 0;">
                                                <p style="display: grid; margin: 0; padding: 0;">Sede donde retira los productos</p>
                                                <p style="display: grid; margin: 0; padding: 0;" class="sede_nombre">Cine Sp4cex Olivos</p>
                                            </div>
                                            <i class="bi bi-caret-down" style="margin-right: 10px;"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" style="text-align: start; width: 280px;">
                                            <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex Miraflores</li>
                                            <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex San Isidro</li>
                                            <li style="cursor: pointer;"><i class="bi bi-geo-alt" style="color: rgb(70, 124, 108); margin-right: 50px; margin-left: 3px;"></i> Cine Sp4cex Barranco</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="fecha">
                                    <button class="sedes_nombre"  data-bs-toggle="dropdown" aria-expanded="false" style="display: flex;">
                                        <i class="bi bi-calendar-fill" style="margin-left: 10px;"></i>
                                        <div style="display: grid; margin: 0; padding: 0;">
                                            <p style="display: grid; margin: 0; padding: 0;">Seleccione fecha de recojo</p>
                                            <p style="display: grid; margin: 0; padding: 0;" class="sede_nombre">20/01/2023</p>
                                        </div>
                                        <i class="bi bi-caret-down"></i>
                                    </button>
                                    <ul class="dropdown-menu" style="text-align: start;">
                                        <div class="calendario">
                                            <div class="calendar-info">
                                                <div class="arrow" id="prev-month"><i class="bi bi-chevron-compact-left"></i></div>
                                                <div id="month" style="margin: 0 5px 0 0;"></div>
                                                <div id="year" style="margin: 0  0 0 5px;"></div>
                                                <div class="arrow" id="next-month"><i class="bi bi-chevron-compact-right"></i></div>
                                            </div>
                                            <ol>
                                                <li class="day-name">Lun</li>
                                                <li class="day-name">Mar</li>
                                                <li class="day-name">Mié</li>
                                                <li class="day-name">Jue</li>
                                                <li class="day-name">Vie</li>
                                                <li class="day-name">Sáb</li>
                                                <li class="day-name">Dom</li>
                                                <li class="first-day" id="first-day days">1</li>
                                                <li class="days" id="days">2</li>
                                                <li class="days" id="days">3</li>
                                                <li class="days" id="days">4</li>
                                                <li class="days" id="days">5</li>
                                                <li class="days" id="days">6</li>
                                                <li class="days" id="days">7</li>
                                                <li class="days" id="days">8</li>
                                                <li class="days" id="days">9</li>
                                                <li class="days" id="days">10</li>
                                                <li class="days" id="days">11</li>
                                                <li class="days" id="days">12</li>
                                                <li class="days" id="days">13</li>
                                                <li class="days" id="days">14</li>
                                                <li class="days" id="days">15</li>
                                                <li class="days" id="days">16</li>
                                                <li class="days" id="days">17</li>
                                                <li class="days" id="days">18</li>
                                                <li class="days" id="days">19</li>
                                                <li class="days" id="days">20</li>
                                                <li class="days" id="days">21</li>
                                                <li class="days" id="days">22</li>
                                                <li class="days" id="days">23</li>
                                                <li class="days" id="days">24</li>
                                                <li class="days" id="days">25</li>
                                                <li class="days" id="days">26</li>
                                                <li class="days" id="days">27</li>
                                                <sli class="days" id="days">28</sli>
                                                <li class="days" id="days">29</li>
                                                <li class="days" id="days">30</li>
                                                <li class="days" id="days">31</li>
                                            </ol>

                                        </div>
                                    </ul>

                                    <script src="js_usuario/script_calendar.js"></script>
                                </div>

                                <div class="container-icon" style="margin-left:300px">
                                    <div class="container-cart-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                        <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                                        </svg>
                                        <%if(cantidad == null) {%>
                                        <div class="count-products">
                                            <span id="contador-productos">0</span>
                                        </div>
                                        <%}else{%>
                                        <div class="count-products">
                                            <span id="contador-productos"><%= cantidad%></span>
                                        </div>
                                        <%}%>
                                    </div>

                                    <div class="container-cart-products hidden-cart">
                                        <div class="row-product hidden">
                                            <div class="cart-product">
                                                <div class="info-cart-product">
                                                    <span class="cantidad-producto-carrito">1</span>
                                                    <p class="titulo-producto-carrito">Zapatos Nike</p>
                                                    <span class="precio-producto-carrito">s/80</span>
                                                </div>
                                                <svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    fill="none"
                                                    viewBox="0 0 24 24"
                                                    stroke-width="1.5"
                                                    stroke="currentColor"
                                                    class="icon-close"
                                                    >
                                                <path
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round"
                                                    d="M6 18L18 6M6 6l12 12"
                                                    />
                                                </svg>
                                            </div>
                                        </div>

                                        <div class="cart-total hidden">
                                            <h3>Total:</h3>
                                            <span class="total-pagar">s/200</span>
                                        </div>
                                        <%
                                            List<Carrito> listaCarrito = (List<Carrito>) session.getAttribute("listaC");
                                            Double pagoTotal = (Double) session.getAttribute("pagoTotal");
                                            if(listaCarrito != null){
                                                for(int i = 0; i<listaCarrito.size(); i++){
                                        %>
                                        <div class="info-cart-product">
                                            <span class="cantidad-producto-carrito"><%= listaCarrito.get(i).getItem()%></span>
                                            <p class="titulo-producto-carrito"><%= listaCarrito.get(i).getNombre()%></p>
                                            <span class="precio-producto-carrito"><%= listaCarrito.get(i).getPrecioCompra()%></span>
                                        </div>
                                        <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            fill="none"
                                            viewBox="0 0 24 24"
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            class="icon-close"
                                            >
                                        <path
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            d="M6 18L18 6M6 6l12 12"
                                            />
                                        </svg>
                                       
                                        
                                        <%
                                                }
                                            }else{
                                        %>
                                        <p class="cart-empty">El carrito está vacío</p>
                                        <%
                                            }
                                        %>
                                         <h3>Total S/.<%= pagoTotal%></h3>
                                        <a class="btn-pagar" href="pagar_usuario.jsp">Pagar <i class="fa-solid fa-bag-shopping"></i> </a>
                                      </div>
                                </div>


                            </div>
                        </div>
                        <div>
                            <br><br>
                            <div class="container" style="margin-top: 30px; margin-right: 800px;">
                                <div class="row">
                                    <%                                       
                                        if(lista != null){
                                            for(int i=0; i<lista.size(); i++){                                  
                                    %>
                                    <div class="col-md-4 mb-4">
                                        <div class="card" style="border-radius: 25px; border: 1px solid black;">
                                            <img class="card-image" src="<%= lista.get(i).getImagen() %>" style="width: 99%; height: 60%;border-radius: 2rem;position: relative;top: 10px;"></img>
                                            <div class="card-content">
                                                <h3 class="card-title"><%= lista.get(i).getProducto() %></h3>
                                                <span class="price" style="font-weight: normal;">s/<%= lista.get(i).getPrecio() %></span>
                                                <p class="card-description"><%= lista.get(i).getDescripcion() %></p>
                                                <a href="ControladorDulceria?accion=AgregarCarrito&codigo=<%= lista.get(i).getCodigo()%>" ><button class="card-button btnAñadirCarrito" style="position: relative; top:-8px">Añadir</button></a>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                            }
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js_usuario/carrito.js"></script>
        <%@include file="footer_usuario.jsp" %>
    </body>
</html>
