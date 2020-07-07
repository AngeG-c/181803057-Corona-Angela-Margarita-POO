<%-- 
    Document   : editarUsuario
    Created on : 19 jun 2020, 17:35:13
    Author     : izelo
--%>

<%@page import="formularios.UsuarioDb"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%      int id = Integer.parseInt(request.getParameter("id_usuario"));
        UsuarioDb user = new UsuarioDb();
        user.editaUsuario(request.getParameter("usuario"), id);%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Update user</title>
    </head>
    <body>
        <h1 style="text-align:center;color:black" class="text-success">Successfully updated username</h1>
        <br></br>
        <a class="btn btn-outline-info" href="index.jsp" role="button">Back</a>
    </body>
</html>