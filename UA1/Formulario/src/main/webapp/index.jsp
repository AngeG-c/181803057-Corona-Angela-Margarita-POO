
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer Formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>Este es mi primer formulario en donde concere la diferencia entre POST<b> y GET</b></p>
        <form method="POST">
            <input type="text" name="minombre"/>
            <input type="password" name="contra"/>
            <input type="date" name="fechanaciemiento"/>
            <input type="submit" value="enviar"/>
        </form>
        <h1>Los datos ingresados son</h1>
        <%
            out.println(request.getParameter("minombre"));
            out.println(request.getParameter("contra"));
            out.println(request.getParameter("fechanaciemiento"));
        %>
        
        
        
    </body>
</html>
