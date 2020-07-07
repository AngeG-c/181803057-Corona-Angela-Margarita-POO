

<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    int id=Integer.parseInt(request.getParameter("id_user"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Password</title>
    </head>
    <body>
        <div class="container">
            <h1>Change password</h1><br>
            <form action="editarContra.jsp" method="POST" class="form">
                
                    <div class="col" >
                        <input type="hidden" value="<%=id%>" class="form-control" placeholder="id" name="id" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Old password"  name="password" required />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="New password"  name="pass1" required />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="New password"  name="pass2" required />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-black"  value="Send"/>
                        <a class="btn btn-info btn-black" href="index.jsp">Back</a>
                    </div>
                    
            </form>
        </div>
    </body>
</html>
