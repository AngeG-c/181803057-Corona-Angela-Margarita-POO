

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numeros que pida el usuario</title>
    </head>
    <body>
        <h1>Formulario J A V A</h1>
        <p>Este es la creación de un proyecto de Java web que contiene un formulario que pide un número e imprime del 0 hasta el numero que le indiques</p><br>
        <h2> Ingresa el numero que desees en la caja de texto, posteriormente da click en enviar</h2><br>
        <form method="POST">
      
            <input type="text" name="numero"/><br>
            <input type="submit" value="enviar"/>
        </form>
        <h2>El número ingresado es</h2>
        <%
            try
		 {
		    String num= request.getParameter("numero");
                    int numero=Integer.valueOf(num);
                    for (int i=0; i<=numero; i++){
                        out.println(i);
                    }
		} catch (Exception e){
                    System.out.println("Hubo un error");}
        %>
    </body>
</html>
