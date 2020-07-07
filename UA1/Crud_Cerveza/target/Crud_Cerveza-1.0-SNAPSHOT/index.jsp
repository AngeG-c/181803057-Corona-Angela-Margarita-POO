<%-- 
    Document   : index
    Created on : 8 jun 2020, 8:31:05
    Author     : cgang
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <h1 style="color:blue">Excepciones SQL </h1>
    </body>
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
        //En esta sección se muestra el código a usar sin ninguna falla
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion
                    = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.createStatement();
            rs = stmt.executeQuery("Select * from usuarios");
    %><br><br><%
        while (rs.next()) {
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
    %><br><br><%
        }
        //Traductor de nuestras excepciones
    } catch (SQLException e) {
        switch (e.getErrorCode()) {
            case 0:
                out.println("Host erroneo o inexistente / Atributo no existente");
                break;
            case 1146:
                out.println("La tabla indicada no existe");
                break;
            case 1045:
                out.println("El usuario no tiene permisos en esta base de datos");
                break;
            case 1049:
                out.println("Base de datos desconocida");
                break;
            case 1064:
                out.println("Error en la sintaxis SQL");
                break;
            default:
                out.println(e.getMessage() + e.getErrorCode());
                break;
        }
    } finally {
    %><h2 style="color:blueviolet">Gracias por su preferencia</h2><%
     }%>
</html>