
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Update password</title>
    </head>
    <body>
        <br>
        <form>
            <%
                String contraActual = request.getParameter("password"), c1 = request.getParameter("pass1"), c2 = request.getParameter("pass2");
                int id = Integer.parseInt(request.getParameter("id")), edicion = 0;
                UsuarioBD password = new UsuarioBD();
                boolean consulta = password.verificarPassword(id, contraActual);
                if (consulta == true) {
                    if (c1.equals(c2)) {
                        edicion = password.editarPassword(c1, id);
                        switch (edicion) {
                            case 0:
            %><h1 style="text-align:center" class="text-danger">No se han editado los datos del usuario</h1>
            <br></br>
            <a class="btn btn-success btn-block" href="index.jsp" role="button">Volver al inicio</a>
            <%
                    break;
                case 1:
            %>

            <h1 style="text-align:center;" class="text-success">Se han editado los datos del usuario</h1>
            <br></br>
            <a class="btn btn-success btn-block" href="index.jsp" role="button">Volver al inicio</a><%
                        break;
                }
            } else {
            %><h1 style="text-align:center;color:black" class="text-danger">Las contraseñas nuevas no coinciden</h1>
            <br></br>
            <a class="btn btn-danger btn-block" href="index.jsp" role="button">Volver al inicio</a><%
                }
            } else {
            %><h1 style="text-align:center;color:black" class="text-danger">La contraseña actual no coinciden</h1>
            <br></br>
            <a class="btn btn-danger btn-block" href="index.jsp" role="button">Volver al inicio</a><%
                }
            %>
        </form>
    </body>
</html>
