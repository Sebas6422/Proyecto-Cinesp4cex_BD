<%-- 
    Document   : postulantes_usuario
    Created on : 6 oct. 2023, 23:27:49
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <style>
                .background-container {
                    display: flex;
                    background-image:url(mesade.png), url(logocine.png); 
                    background-repeat: no-repeat, no-repeat;
                    background-size: 50% 100%, 50% 100%;
                }
    </style>

    <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">
    <link rel="stylesheet" href="css_usuario/estilos_nosotros_usuario.css">
    <title>Cine Sp4cex</title>

    <title>Trabaja Con Nosotros</title>
</head>
<body>
    <%@include file="encabezado_usuario.jsp" %>
    
    <div class="container">
        <div class="form-container">
            <h2 style="font-family: 'Rowdies';">TRABAJA CON NOSOTROS SOBRIN@</h2>
            <form id="job-application-form">
                <div class="form-group">
                    <label for="nombre">Nombres:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="form-group">
                    <label for="nombre">Apellidos:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="form-group">
                    <label for="nombre">Telefono:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>

                <div class="form-group">
                    <label for="nombre">Direccion:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>

                <div class="form-group">
                    <label for="nombre">Documento de Identidad:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>

                <div class="form-group">
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="cv">Adjuntar CV:</label>
                    <input type="file" id="cv" name="cv" accept=".pdf,.doc,.docx" required>
                </div>
                
                <div class="form-group" style="display: flex; align-items: center;">
                    <label for="tyc" style="flex: 5; margin-right: 5px;">Acepto los Términos y Condiciones:</label>
                    <div class="checkbox-wrapper">
                        <input id="_checkbox-26" type="checkbox">
                        <label for="_checkbox-26"ox-wrapper">
                        <input id="_checkbox-26" t>
                            <div class="tick_mark"></div>
                        </label>
                    </div>
                </div>

                <button class="learn-more">
                    <span class="circle" aria-hidden="true">
                    <span class="icon arrow"></span>
                    </span>
                    <span class="button-text">Enviar</span>
                  </button>                

            </form>
        </div>
        <div class="company-info">
            <img src="imagenes_usuario/logo cine.png" alt="Logo de la empresa">
            <p>En el año 2023, 5 amigos apasionados por el cine se unieron para dar vida a su sueño compartido: crear una empresa de cine única que llevaría la magia del séptimo arte a nuevas alturas. Estos amigos, Julio, Sebastian, Aldair, Roger e Ivan, habían compartido su amor por el cine desde la infancia y siempre soñaron con trabajar en la industria cinematográfica de una manera que dejara una huella duradera.

                Armados con su creatividad, determinación y una visión audaz, fundaron " CINE SP4CEX ". En el corazón de su empresa, estaba el deseo de ofrecer experiencias cinematográficas excepcionales y diversas a personas de todas las edades y orígenes. Desde la producción de películas originales hasta la organización de eventos cinematográficos únicos, Cine Sp4cex 2023 se comprometió a inspirar y conectar a través del poder del cine.</p>

                <br>
           <h2 style="font-family: 'Rowdies';">Misión</h2>

                <p>La misión de CINE SP4CEX es llevar historias impactantes y experiencias cinematográficas de alta calidad a audiencias de todo el mundo. Estamos dedicados a crear películas que inspiren, entretengan y desafíen la imaginación. Además, nos esforzamos por preservar y promover la diversidad cultural a través del cine, celebrando voces diversas y perspectivas únicas en nuestras producciones.</p>
    
            
                <br>
           <h2 style="font-family: 'Rowdies';">Visión</h2>

                <p>Nuestra visión es convertirnos en una empresa de cine líder reconocida a nivel internacional por nuestra creatividad, innovación y compromiso con la excelencia cinematográfica. Queremos que CINE SP4CEX sea un faro para cineastas emergentes y un destino preferido para los amantes del cine. Al mirar hacia el futuro, aspiramos a forjar colaboraciones globales y establecer un legado duradero que inspire y conecte a través de la magia del cine.

                    CINE SP4CEX está en una misión para cautivar corazones, desencadenar emociones y unir a las personas a través de historias cautivadoras en la pantalla grande. Con pasión y perseverancia, estos cuatro amigos continúan escribiendo su historia en la industria del cine, creando un legado que perdurará en el tiempo.</p>
    
        </div>
    </div>
    <script src="js_usuario/script.js"></script>

    <%@include file="footer_usuario.jsp" %>
</body>
</html>
