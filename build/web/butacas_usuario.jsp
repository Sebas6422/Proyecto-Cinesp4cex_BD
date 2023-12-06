<%-- 
    Document   : butacas_usuario
    Created on : 7 oct. 2023, 07:17:57
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rowdies&display=swap">
        <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
        

        <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">
        <link rel="stylesheet" href="css_usuario/butacas.css">
        <title>Cine Sp4cex</title>
    </head>
    <body>
        <%@include file="encabezado_usuario.jsp" %>
            <header>
                <h2 style="font-family: 'Dela Gothic One';">BUTACAS SP4CEX</h2>
            </header>
            <div class="container">
                <div class="center-container">
                    <div class="seating-container">
                        <div id="seating-chart">
                            <!-- El plano de butacas se generará aquí con JavaScript -->
                        </div>
                    </div>
                    <div class="booking-info">
                        <h2 style="font-family: 'Rowdies';">Butacas seleccionadas</h2>

                        <ul id="selected-seats-list">
                        <!-- Las butacas seleccionadas se mostrarán aquí con JavaScript -->
                    </ul>
                    <p style="font-family: 'Dela Gothic One';">Total a Pagar: s/.<span id="total-price">0</span></p>

                    <a href="pagar_usuario.jsp" class="btn btn-4" style="width: 100%;text-align: center; display: block;"> 
                        <br>
                        PAGAR 
                        </a>
                    </div>
                    </div>
             </div>  
        <script src="js_usuario/butacas.js"></script>
        <%@include file="footer_usuario.jsp" %>
    </body>
</html>
