<%-- 
    Document   : eliminaV2
    Created on : 24 jun 2020, 23:13:36
    Author     : cgang
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Elimina usuario version 2</title>
    </head>
    <body>
        <%
    Connection conexion = null;
    PreparedStatement stmt = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("DELETE FROM usuarios WHERE id_usuario=?");
        stmt.setInt(1, Integer.parseInt(request.getParameter("id_usuario")));
        stmt.executeUpdate();
%>
        
        
        <h1 style="text-align:center;color:black" class="text-success">Deleted user</h1>
        <br></br>
        <a class="btn btn-outline-danger" href="index.jsp" role="button">Back</a>
    </body>
</html>

