<%-- 
    Document   : index
    Created on : 7 jun 2020, 19:31:10
    Author     : Ange
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaDB</title>
    </head>
    <body>
        <h1 style="color:gold">Probando Excepciones</h1>
    </body>
<%
    Connection conexion=null;
    Statement stmt=null;
    ResultSet rs=null;
    //En esta sección se muestra el código a usar sin ninguna falla
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println(e.getMessage());
}%><h2 style="color:gold">---------------EXCEPCIONES SQL---------------</h2><%

//En esta sección se forza el error de un usuario inexistente
try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "ange", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println("El usuario no existe o esta equivocado. "+e.getMessage());
    }%><br><br><%

//En esta sección se forza el error de una tabla inexistente
try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from users");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println("La tabla no se ha encontrado en la BD seleccionada "+e.getMessage());
    }%><br><br><%

//En esta sección se forza el error de un atributo inexistente
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("user"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println("El atributo no ha sido creado. "+e.getMessage());
    }%><br><br><%

//En esta sección se forza el error de un base de datos inexistente

try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/bdUser", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println("Base de datos no encontrada. "+e.getMessage());
    }%><br><br><%

//En esta sección se forza el error de un host erroneo
try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://Myhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuarios");
        while(rs.next()){
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println("Host erroneo. "+e.getMessage());
    } finally{
            %><h2 style="color:gold">Gracias por usar el programa</h2><%
    }%><br><br>
</html>

