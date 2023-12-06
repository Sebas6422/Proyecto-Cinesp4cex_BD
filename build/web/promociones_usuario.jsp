<%-- 
    Document   : promociones_usuario
    Created on : 6 oct. 2023, 23:14:01
    Author     : USER
--%>

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

    <title>Promociones</title>
</head>
<body>
    <%@include file="encabezado_usuario.jsp" %>

    <div class="menu">
        <ul class="menu-promociones">
            <li>
                <div>
                    <h1 class="unica">Oportunidad Unica,
                        <br>
                        Oportunidad Sp4cex</h1>
                        
                        <p class="peli">Disfruta tu pelicula con la mejor compañia, 
                        <br>
                        con tu mejor banco, aprovecha ya esta oportunidadㅤㅤ       
                        <br>
                        unica.
                        </p>
                        <button class="boton">Terminos y condiciones</button>
                </div>
                <div>  
                    <img src="imagenes_usuario/promo1.png" width="300px">
                </div>
            </li>

            <li>
                <div>
                    <h1 class="unica">Sobrin@ aprovecha
                        <br>
                        una noche de terror yape</h1>
                        
                        <p class="peli">Los animatronicos te esperan en su noche
                        <br>
                        de gala y de gala vas con yape.
                        </p>
                        
                        <button class="boton">Terminos y condiciones</button>
                </div>
                <div>   
                    <img src="imagenes_usuario/promo2.png" width="300px">
                </div>
            </li>

            <li>
                <div>
                    <h1 class="unica">Noche familiar
                        <br>
                        noche con los tuyos. </h1>
                            
                        <p class="peli">Ven con toda la familia
                        <br>
                        descuentos y combos para todos!
                        </p>
                            
                        <button class="boton">Terminos y condiciones</button>
                </div>
                <div>   
                    <img src="imagenes_usuario/promo3.png" width="300px"> 
                </div>
            </li>
        </ul>
    </div>
    
    <%@include file="footer_usuario.jsp" %>
</body>
</html>
