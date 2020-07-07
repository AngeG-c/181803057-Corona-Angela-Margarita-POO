<%-- 
    Document   : index
    Created on : 24/05/2020, 10:05:48 PM
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
        <h1>Ejercicio 3</h1><br>
        <p>Se pide un número del 1 - 12 que muestre qué estación del año le pertenece(Primavera, Verano, Otoño e Invierno)</p>


        <%
            if ((request.getParameter("mes")) != null) {%>
        <h2>La estación del mes es: <br></h2>

        <%int mes = Integer.parseInt(request.getParameter("mes"));
                    switch (mes) {

                        case 3:
                        case 4:
                        case 5:
                            out.println("Estas en Primavera");
                            break;

                        case 6:
                        case 7:
                        case 8:
                            out.println("Estas en Verano");
                            break;

                        case 9:
                        case 10:
                        case 11:
                            out.println("Estas en Otoño");
                            break;

                        case 12:
                        case 1:
                        case 2:
                            out.println("Estas en Invierno");
                            break;

                        default:
                            out.println("Mes y estacion no existen");
                    }
                

        %><br>
        <%        }else {%>
        <form >
            <p>Ingresa el numero del mes que deseas saber la estación en la que se encuentra<br></p>
            <input type="number" name="mes"/>
            <input type="submit" value="enviar"/>
        </form>

        <h3>No has ingresado los datos solicitados</h3>
        <%}
        %>
    </body>
</html>
