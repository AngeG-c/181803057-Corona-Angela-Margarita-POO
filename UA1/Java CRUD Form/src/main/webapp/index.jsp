<%-- 
    Document   : index
    Created on : 1 jun. 2020, 9:09:15
    Author     : Ange
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    table, th, td {
        border: 1px solid black;
    }
    tr{
        font-size: 18px;
        font-family: Arial;
    }
    h1, h3{
        font-size: 25px;
        font-family: Arial;
    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>User management</title>
    </head>
    <body>
    </body>
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
    %><br><br> <div style="text-align:center">
        <table>
            <h3 style="text-align:center;color:black">Users</h3>
            <tr>
                <td><a style="text-align: right" class="btn btn-outline-info " href="formularioUsuario.jsp" role="button">Add user</a></td>
            </tr>
            <table style="margin: 0 auto;" class="table">
                <thead  class="btn-warning">
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Password</th>                
                <th scope="col">Age</th>
                <th scope="col">Options</th>
                </thead>
                <%
                    while (rs.next()) {
                %>
                <tr>
                    <td scope="row"><%= rs.getInt("id_usuario")%></td>
                    <td scope="row"><%= rs.getString("usuario")%></td>
                    <td scope="row"><%= rs.getString("password")%></td>
                    <td scope="row"><%= rs.getString("edad")%></td>
                    <td> 
                        <a class="btn btn-outline-info" href="formularioEditaUsuario.jsp?id_usuario=<%= rs.getInt("id_usuario")%>">Edit user</a>
                        <a class="btn btn-outline-info" href="formularioEditaContra.jsp?id_usuario=<%= rs.getInt("id_usuario")%>">Edit password</a>
                        <a class="btn btn-outline-info" href="eliminaUsuario.jsp?id_usuario=<%= rs.getInt("id_usuario")%>">Delete user</a>
                        <a class="btn btn-outline-info" href="eliminaV2.jsp?id_usuario=<%= rs.getInt("id_usuario")%>">Delete user version 2</a>
                    </td>
                </tr>
                <%}%>
            </table>
    </div>  <br><br>
</html>
