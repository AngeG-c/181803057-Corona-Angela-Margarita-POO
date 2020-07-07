<%-- 
    Document   : index
    Created on : 24/05/2020, 09:26:35 PM
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
        

        <h1>Ejercicio 2</h1><br>
        <p>Programa que indique si un triángulo es equilátero, isósceles y escaleno.<br>
            Validar que los valores ingresados son de un triángulo</p>


        <%
            if ((request.getParameter("l1")) != null && (request.getParameter("l2")) != null && (request.getParameter("l3")) != null) {%>
        <h2>El tirangulo es: </h2>

        <%int l1 = Integer.parseInt(request.getParameter("l1"));
            int l2 = Integer.parseInt(request.getParameter("l2"));
            int l3 = Integer.parseInt(request.getParameter("l3"));
            if (l1 == l2 && l1 == l3 && l2 == l3) {
                out.println("Triangulo Equilatero");
            } else {
                if ((l1 == l2 && l2 != l3 && l1 != l3) || (l1 == l3 && l2 != l3 && l2 != l1) || (l3 == l2 && l1 != l3 && l1 != l2)) {
                    out.println("Triangulo Isoseles");
                } else {
                    out.println("Triangulo Escaleno");
                }
            }

        %><br>
        <%        } else {%>
        <form >
            <p>Ingresa el lado 1<br></p>
            <input type="number" name="l1"/>
            <p>Ingresa el lado 2<br></p>
            <input type="number" name="l2"/>
            <p>Ingresa el lado 3<br></p>
            <input type="number" name="l3"/>
            <input type="submit" value="enviar"/>
        </form>

        <h3>No has ingresado los datos solicitados</h3>
        <%}


        %>

    </body>
</html>
