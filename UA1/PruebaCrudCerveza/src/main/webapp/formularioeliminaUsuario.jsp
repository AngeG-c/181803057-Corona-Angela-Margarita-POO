<%-- 
    Document   : formularioeliminaUsuario
    Created on : 19 jun 2020, 20:38:22
    Author     : izelo
--%>

<%@page import="formularios.UsuarioDb"%>
<%@page import="java.sql.*"%>
<%      int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDb user = new UsuarioDb();
        user.validaId(id);  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Delete</title>
    </head>
    <body>
        <div class="form-group">
            <h1>Delete user</h1>
            <form  action="eliminaUsuario.jsp" method="POST">
                <div class="form-group">
                    <label>Do you want to delete this user?</label>
                    <input type="hidden" name="id_usuario" value="<%=id%>"/>
                </div>
                <input class="btn btn-outline-info" type="submit" value="si"/>
                <a class="btn btn-outline-info" href="index.jsp" role="button">Cancel</a>
            </form>
        </div>
    </body>
</html>