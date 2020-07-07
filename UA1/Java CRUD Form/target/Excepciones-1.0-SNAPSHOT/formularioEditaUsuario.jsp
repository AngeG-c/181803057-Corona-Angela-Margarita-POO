<%-- 
    Document   : formularioEditaUsuario
    Created on : 19 jun 2020, 18:14:59
    Author     : Ange
--%>
<%@page import="java.sql.*"%>
<%
    String usuario = "";
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM usuarios WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            usuario = rs.getString("usuario");
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Update user</title>
    </head>
    <body>
        <div class="form-group">
            <h1>Update user</h1>
            <form  action="editarUsuario.jsp" method="POST">
                <div class="form-group">
                    <input type="hidden" name="id_usuario" value="<%=id%>"/>
                </div>
                <div class="form-group">
                    <label>New name user:</label>
                    <input type="text" placeholder="usuario" name="usuario" required/>
                </div >
                <input type="submit" value="Actualizar"/>
                <a class="btn btn-outline-danger" href="index.jsp" role="button">Cancel</a>
            </form>
        </div>
    </body>
</html>
