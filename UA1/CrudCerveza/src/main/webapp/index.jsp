<%-- 
    Document   : index
    Created on : 3 jun 2020, 23:36:14
    Author     : Angela
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Cerveza Ange G</title>
    </head>
    <body background="img/chevecha.jpg" bgcolor="FFCECB">
        <h1>Crud CERVECERIA</h1>
    </body>
</html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cerveza", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from cerveza");
    } catch (Exception e) {
        out.println("Error: " + e);
    }%>
<div id="main-container">
    <table class="table table-striped">
        <caption>Ceverzas</caption>
        <tr>
            <th class="text-center">Id Cerveza</th>
            <th class="text-center">Cerveza</th>
            <th class="text-center">Tipo</th>
            <th class="text-center">Envase</th>
            <th class="text-center">Capacidad</th>
        </tr>
        <%while (rs.next()) {%>
        <tr>
            <th class="text-center"><%out.println(rs.getInt(1));%></th>
            <th class="text-center"><%out.println(rs.getString(2));%></th>
            <th class="text-center"><%out.println(rs.getString(3));%></th>
            <th class="text-center"><%out.println(rs.getString(4));%></th>
            <th class="text-center"><%out.println(rs.getInt(5));%></th>
        </tr> 
        <%}%>
    </table>
</div>
<br></br>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cerveza", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from cat_cap");
    } catch (Exception e) {
        out.println("Error: " + e);
    }%>
<div id="main-container">
    <table class="table table-striped">
        <caption>Ceverzas</caption>
        <tr>
            <th class="text-center">Id Capacidad</th>
            <th class="text-center">Capacidad</th>
        </tr>

        <%while (rs.next()) {%>
        <tr>
            <th class="text-center"><%out.println(rs.getInt(1));%></th>
            <th class="text-center"><%out.println(rs.getString(2));%></th>
        </tr> 
        <%}%>
    </table>
</div>
<br></br>