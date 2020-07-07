
<%@page import="Dao.UsuarioBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Usuario> usuarios = new UsuarioBD().ListadoUsuario();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>User management</title>
    </head>
    <body>
        <div>
            <div class="containe">
                <table align="center" class="table table-hover" >
                    <thead class="thead-dark">
                        <tr>
                            <td colspan="2"><h2>Users</h2></td><br>
                            <td><a class="btn btn-success btn-black" href="formularioUsuario.jsp">Add User </a></td>
                        </tr>
                        <tr>
                            <th>Id</th>
                            <th>User</th>
                            <th>Password</th>
                            <th>Age</th>
                        </tr>
                    </thead>
                    <%
                        for(Usuario usuario:usuarios){
                    %>
                    <tr>
                        <td><%=usuario.getId_usuario()%></td>
                        <td><%=usuario.getUsuario()%></td>
                        <td><%=usuario.getPassword()%></td>
                        <td><%=usuario.getEdad()%></td>
                        <td><a class="btn btn-warning btn-block"  href="formularioEditar.jsp?id_user=<%=usuario.getId_usuario()%>">Edit User</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario.jsp?id_user=<%=usuario.getId_usuario()%>"> Delete User</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario2.jsp?id_user=<%=usuario.getId_usuario()%>"> Delete User v2</a></td>
                        <td><a class="btn btn-info btn-block" href="formularioContra.jsp?id_user=<%=usuario.getId_usuario()%>">Edit Password</a></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
    </body>
</html>
