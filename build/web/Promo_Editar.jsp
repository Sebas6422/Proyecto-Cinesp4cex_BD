<%-- 
    Document   : promo_Editar
    Created on : 18 nov. 2023, 08:06:24
    Author     : Julioo
--%>
<%@page import="Model.PromocionDAO" %>
<%@page import="Model.Promocion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Editar Promo</title>
        </head>
            <%
            String codigo = request.getParameter("codigo");
            PromocionDAO pDAO = new PromocionDAO();
            Promocion prom = new Promocion();
            prom = pDAO.leerPromocion(codigo);
        %>
        <body>
            <h2>Editar Promocion</h2>
            <form action="ControladorPromocion" method="post">
                <input type="hidden" name="grupo" value="promo">
                <input type="hidden" name="opcion" value="editar">
                # <br>
                <input type="text" name="codigo" class="form-control" required value="<%=prom.getCodigo() %>" > <br>
                Nombre <br>
                <input type="text" name="nombre" class="form-control" required  value="<%=prom.getNombre() %>" > <br>
                Descripcion <br>
                <input type="text" name="descripcion" class="form-control" required  value="<%=prom.getDescripcion() %>" ><br>
                Imagen <br>
                <input type="text" name="imagen" class="form-control" required  value="<%=prom.getImagen() %>" >  <br><br>         
                <input type="submit" class="btn btn-success" value="Guardar">
                <a href="Promociones_admin.jsp"><input type="submit" class="btn btn-success" value="Regresar"></a>
            </form>
        </body>
</html>
