
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%

    boolean resul;
    UsuarioBD usuario = new UsuarioBD();
    int id = 0;
    if (request.getParameter("id_user") != null) {
        id = Integer.parseInt(request.getParameter("id_user")); 
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User</title>
    </head>
    <body>

    </body>
</html>