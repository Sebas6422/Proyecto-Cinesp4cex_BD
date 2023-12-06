<%-- 
    Document   : login_usuario
    Created on : 7 oct. 2023, 01:04:14
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Validar" %>%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Cine Sp4cex</title>

        <link rel="stylesheet" href="css_usuario/login2.css">

        <style>
            .background-image {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url('<%= request.getContextPath() %>/imagenes_usuario/cine.jpg'); /* Reemplaza 'tu-imagen-de-fondo.jpg' con la ruta correcta de tu imagen */
                background-size: cover;
                background-position: center;
                z-index: -1; /* Para colocar la imagen de fondo detrás del formulario */
            }
            button {
  padding: 1.3em 3em;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  margin-left: 170px;
}

button:hover {
  background-color: #76f6ff;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

button:active {
  transform: translateY(-1px);
}





.button {
  padding: 1rem 2rem;
  border-radius: .5rem;
  border: none;
  font-size: 1rem;
  font-weight: 400;
  color: #f4f0ff;
  text-align: center;
  backdrop-filter: blur(10px);
  cursor: pointer;
  background: #76f6ff;
}

.button::before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 100%;
  border-radius: .5rem;
  background: linear-gradient(180deg, rgba(8, 77, 126, 0) 0%, rgba(8, 77, 126, 0.42) 100%),rgba(47,255,255,.24);
  box-shadow: inset 0 0 12px rgba(151,200,255,.44);
  z-index: -1;
}

.button::after {
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(180deg, rgba(8, 77, 126, 0) 0%, rgba(8, 77, 126, 0.42) 100%),rgba(47,255,255,.24);
  box-shadow: inset 0 0 12px rgba(151,200,255,.44);
  border-radius: .5rem;
  opacity: 0;
  z-index: -1;
  transition: all .3s ease-in;
}

.button:hover::after {
  opacity: 1;
}

.button-border {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  border-radius: .5rem;
  z-index: -1;
}

.button-border::before {
  content: "";
  position: absolute;
  border-radius: .5rem;
  padding: 1px;
  inset: 0;
  background: linear-gradient(180deg, rgba(184, 238, 255, 0.24) 0%, rgba(184, 238, 255, 0) 100%),linear-gradient(0deg, rgba(184, 238, 255, 0.32), rgba(184, 238, 255, 0.32));
  -webkit-mask: linear-gradient(#fff 0 0) content-box,linear-gradient(#fff 0 0);
  -webkit-mask-composite: xor;
  pointer-events: none;
}





        </style>

    </head>

    <body>
        <div class="background-image"></div>
        <div class="container">
            <div class="form_area">
                <p class="title">Registrate</p>
                <form action="ControladorUsuario" method="post" class="flip-card__form" style="margin-top:-20px" >
                    <div class="card-body">
                        <div class="form_group" style="margin-left:90px" >
                            <label class="sub_title" for="name">Nombres</label>
                            <input name="nombre" placeholder="Ingrese Nombres" class="form_style" type="text">
                        </div>
                        <div class="form_group" style="margin-left:90px" >
                            <label class="sub_title" for="name">Apellidos</label>
                            <input name="apellido" placeholder="Ingrese Apellidos" class="form_style" type="text">
                        </div>

                        <div class="form_group" style="margin-left:90px" >
                            <label class="sub_title" for="email">Email</label>
                            <input name="email" placeholder="Ingrese su Email" id="email" class="form_style" type="email">
                        </div>
                        <div class="form_group" style="margin-left:90px" >
                            <label class="sub_title" for="password">Password</label>
                            <input name="contraseña" placeholder="Ingrese su contraseña" id="password" class="form_style" type="password">
                        </div>
                        <div class="form_group" style="margin-left:90px" >
                            <label class="sub_title" for="password">Password</label>
                            <input name="telefono" placeholder="Ingrese su celular" id="celular" class="form_style" type="text">
                        </div>
                    </div>
                    <br>
                    <div class="form-group" >
                        <label style="color: #fff;">Imagen de usuario</label>
                        <input type="file" name="fileImagen"> 
                    </div>
                    <br>
                    <div class="card-footer">
                        <button> Añadir </button>
                    </div>
                    <br>
                    <a href="login.jsp" class="button">
                        Atras<span class="button-border"></span>
                    </a>

                </form>
                
                
            </div>

        </div>
    </body>
</html>