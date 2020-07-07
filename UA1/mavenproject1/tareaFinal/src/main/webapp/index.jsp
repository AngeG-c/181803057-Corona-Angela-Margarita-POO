<%-- 
    Document   : index
    Created on : 22/05/2020, 08:33:57 AM
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
        <h1>El programa que debio ser y no fue (Sin TRY, SIN JAVASCRIPT, SIN PROBLEMAS DE GLASSFISH)</h1>

        <%
            if ((request.getParameter("numero")) != null&& request.getParameter("numero")!="") {%>
        <h2>El ciclo del valor ingresado es</h2>

        <%int numero = Integer.parseInt(request.getParameter("numero"));
            for (int i = 0; i <= numero; i++) {
                out.println(i);
            }%>
        <form>
            <input type="hidden" name="numero"  value=""/><br>
            <input type="submit" value="Regresar"/>
        </form>
        <%
            } else {%>
        <form >

            <input type="number" name="numero" required/><br>
            <input type="submit" value="Enviar"/>
        </form>

        <h3>No has ingresado ningun numero</h3>
        <%}


        %>
    </body>
</html>
