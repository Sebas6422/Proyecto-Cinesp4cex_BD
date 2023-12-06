<%@page import="Model.Usuario"%>
<div id="header" class="header">
    <img src="imagenes_usuario/logo.png" alt="Logo-Cine-Sp4cex" class="logo">
          <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rowdies&display=swap">
          <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
  
          
    <h1 style="font-family: 'Dela Gothic One';">Cine Sp4cex</h1>
    <nav>
          <ul>
            <li><a href="index.jsp" style="font-family: 'Press Start 2P';">Inicio</a></li>
            <li><a href="dulceria_usuario.jsp" style="font-family: 'Press Start 2P';">Dulceria</a></li>
            <li><a class="desplazar" href="#footer" style="font-family: 'Press Start 2P';">Nosotros</a></li>
            <li><a href="promociones_usuario.jsp" style="font-family: 'Press Start 2P';">Promociones</a></li>
            
              <%
                Usuario usu = (Usuario) session.getAttribute("usuarioC");
                if(usu==null){
                %>
                <li class="inicio-sesion"><a href="login.jsp"><i class="bi bi-person-fill"></i></a></li>
            <%
                }else{
            %>
                <li class="user-profile" style="position: relative;" >
                    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <img class="navbar-profile-image" style="width: 30px;height: 30px; border-radius: 50%;" src="<%= usu.getImagen()%>">
                        <span class="user-name" style="margin-left: 10px; vertical-align: middle;"><%= usu.getNombres()%></span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="opciones_admin.jsp">Opciones</a></li>
                        <li><a href="ControladorUsuario?accion=Salir" class="dropdown-item" href="index.jsp" value="Salir">Salir</a></li>
                    </ul>
                </li>
            <%
                }
            %>
        </ul>
    </nav>
</div>
        
        