
<%@page import="Dao.UsuarioBD"%>
<%@page import="Dao.*"%>
<%@page import="config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%
    String titulo = "Add user",user="";
    String ruta="agregarUsuario.jsp";
    int id = Integer.parseInt(request.getParameter("id_user"));
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title><%=titulo%></title>
    </head>
    <body>
        <div class="container">
            <h1><%=titulo%></h1><br>
            <form action="<%=ruta%>" method="GET" class="form">
                <% if(id != 0){ %>
                <div>
                    <input type="hidden" value="<%=id%>" class="form-control" placeholder="Id" name="id" />
                </div>
                <% } %>
                <div class="form-group">
                    <input type="text" value="<%=user%>" class="form-control" placeholder="User" name="usuario" required/>
                </div>
                <% if(id == 0){ %>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Pass"  name="password" required />
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" placeholder="Age"  name="edad" required />
                </div>
                <% } %>
                <br>
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-black"  value="Send"/>
                    <a class="btn btn-info btn-black" href="index.jsp">Back</a>
                </div>
            </form>
            
        </div>
    </body>
</html>
