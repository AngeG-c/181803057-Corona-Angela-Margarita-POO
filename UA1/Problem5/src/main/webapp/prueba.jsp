<%-- 
    Document   : prueba
    Created on : 26/05/2020, 07:05:54 PM
    Author     : MAQUINA3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            if ((request.getParameter("wish")) != null) {
                int numero = Integer.parseInt(request.getParameter("wish"));
                for (int i = 1; i <= numero; i++) {%>
        <form >
            <label for="fname">Ingresa un numero: </label>
            <input type="number" name="numero" required/><br>
            <input type="submit" value="Enviar"/>
        </form>
        <% }%>

        <%
        } else {%>
      

        <h3>No has ingresado ningun numero</h3>
        <%}


        %>
    </body>
</html>
