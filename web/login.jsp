<%-- 
    Document   : login
    Created on : 18 nov. 2023, 09:05:56
    Author     : Jaramillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css_usuario/login.css">
        <title>Login</title>
        <style>
        .wrapper {
            --input-focus: #2d8cf0;
            --font-color: #fefefe;
            --font-color-sub: #7e7e7e;
            --bg-color: #111;
            --bg-color-alt: #7e7e7e;
            --main-color: #fefefe;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Arial', sans-serif;
            background-size: cover;
            background-position: center;
            color: var(--font-color);
            background-image: url('<%= request.getContextPath() %>/imagenes_usuario/cine.jpg');
        }
    </style>
    </head>
    <body>
        
        <div class="wrapper">
        <div class="card-switch">
            <label class="switch">
                <input class="toggle" type="checkbox">
                <span class="slider"></span>
                <span class="card-side"></span>
                <div class="flip-card__inner">
                    <div class="flip-card__front">
                        <div class="title">Usuario</div>
                        <form action="Validar" method="POST" class="flip-card__form">
                            <input placeholder="Email" name="usuarioU" class="flip-card__input">
                            <input type="password" placeholder="Password" name="passwordU" class="flip-card__input">
                            <input type="submit" name="accion" value="Entrar" class="flip-card__btn" style="text-align: center">
                        </form>
                        
                        <div class="register-section">
                            <p>¿No tienes cuenta? <a href="login_usuario.jsp" id="register-link">Regístrate</a></p>
                            <div class="register-form">
                                <input type="text" placeholder="Nombre" name="name" class="flip-card__input">
                                <input type="email" placeholder="Email" name="email" class="flip-card__input">
                                <input type="password" placeholder="Contraseña" name="password" class="flip-card__input">
                                <button class="flip-card__btn">Registrarse</button>
                            </div>
                        </div>
                    </div>
                    <div class="flip-card__back">
                        <div class="title">Administrador</div>
                        <form action="Validar" method="POST" class="flip-card__form">
                            <input type="usuario" placeholder="Usuario" name="usuario" class="flip-card__input">
                            <input type="password" placeholder="Contraseña" name="password" class="flip-card__input">
                            <input type="submit" name="accion" value="Ingresar" class="flip-card__btn" style="text-align: center">
                        </form>
                    </div>
                </div>
            </label>
        </div>
    </div>
        
        
    </body>
</html>
