
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    boolean resul;
    UsuarioBD usuario = new UsuarioBD(); 
        resul = usuario.EliminarUsuario(Integer.parseInt(request.getParameter("id"))); 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Delete User</title>
    </head>
    <body>
        <%
           if(resul){
        %>
        <div class="alert alert-success" colspan="2">
            <h2>The user was successfully deleted</h2>
        </div>
        <%
            }else{ 
        %>
            <div class="alert alert-danger" colspan="2">
               <h2>There was a mistake</h2>
            </div>
        <%
            }
        %>  
        <div>
           <a class="btn btn-info btn-black" href="index.jsp">Back</a>
        </div>
    </body>
</html>
