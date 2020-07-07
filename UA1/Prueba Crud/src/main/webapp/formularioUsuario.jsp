<%-- 
    Document   : formularioUsuario
    Created on : 18 jun 2020, 20:57:27
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Registry</title>
    </head>
    <body>
        <div class="form-group">
            <h1>Add new user</h1>
            <form  action="agregarUsuario.jsp" method="POST">
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" placeholder="usuario" name="usuario" id="usuario" required/>
                </div >
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" placeholder="password" name="password" id="password" required/>
                </div>
                <div class="form-group">
                    <label>Age:</label>
                    <input type="text" placeholder="edad" name="edad" id="edad" required/>
                </div >
                <input type="submit" value="enviar"/>
                <a class="btn btn-outline-danger" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>