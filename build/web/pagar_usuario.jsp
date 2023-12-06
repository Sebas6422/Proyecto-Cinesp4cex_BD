<%-- 
    Document   : pagar_usuario
    Created on : 7 oct. 2023, 04:18:58
    Author     : USER
--%>
<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
                Usuario usuS = (Usuario) session.getAttribute("usuarioC");
    %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">
        <link rel="stylesheet" href="css_usuario/estilos_tarjeta.css">
        <title>Cine Sp4cex</title>
    </head>
    <body>
        <%@include file="encabezado_usuario.jsp" %>

        <div class="containerr">

            <div class="card-container">

                <div class="front">
                    <div class="image">
                        <img src="imagenes_usuario/chip.png" alt="">
                        <img src="imagenes_usuario/visas.png" alt="" width="110" height="150">
                    </div>
                    <div class="card-number-box">###############</div>
                    <div class="flexbox">
                        <div class="box">
                            <span>NOMBRE DEL TITULAR</span>
                            <div class="card-holder-name">Nombres y apellidos</div>
                        </div>
                        <div class="box">
                            <span>expires</span>
                            <div class="expiration">
                                <span class="exp-month">mm</span>
                                <span class="exp-year">yy</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="back">
                    <div class="stripe"></div>
                    <div class="box">
                        <span>cvv</span>
                        <div class="cvv-box"></div>
                        <img src="imagenes_usuario/visa.png" alt="">
                    </div>
                </div>

            </div>

            <form action="">
                <div class="inputBox">
                    <span>Numero de tarjeta débito o crédito</span>
                    <input type="text" maxlength="16" class="card-number-input" placeholder="Ingresa un número" inputmode="numeric" required>
                </div>
                <div class="inputBox">
                    <span>Nombre del titular de la tarjeta</span>
                    <input type="text" class="card-holder-input" required>
                </div>
                <div class="flexbox">
                    <div class="inputBox" required>
                        <span>mm / Expiración</span>
                        <select name="" id="" class="month-input">
                            <option value="month" selected disabled>Mes</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </div>
                    <div class="inputBox" required>
                        <span>yy / Expiración</span>
                        <select name="" id="" class="year-input">
                            <option value="year" selected disabled>Año</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>
                            <option value="2029">2029</option>
                            <option value="2030">2030</option>
                        </select>
                    </div>
                    <div class="inputBox">
                        <span>cvv</span>
                        <input type="text" maxlength="4" class="cvv-input" required>
                    </div>
                </div>

                <!-- Button trigger modal -->
                <a href="ControladorDulceria?accion=Pagar&codigoU=<%= usuS.getCodigo()%>" class="Pagar-btn" style="position: absolute; width: 550px" type="button" data-bs-target="#staticBackdrop">
                    Pagar
                </a>

                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style=" height: 160px">
                            <div class="modal-header">

                                <a href="index.jsp" class="btn-close"></a>
                            </div>
                            <div class="modal-body">
                                <h1>Gracias por su compra</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>    
        <script src="js_usuario/script_tarjeta.js"></script>  
        <%@include file="footer_usuario.jsp" %>
    </body>
</html>
