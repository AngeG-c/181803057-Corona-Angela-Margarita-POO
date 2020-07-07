/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author cgang
 */
public class UsuarioBD {
    //Atributos SQL
    private static final String listado="SELECT * FROM usuarios";
    
    //atributos de conexion
    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<Usuario> listadoUsuarios() throws SQLException{
        List<Usuario> usuarios = new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(listado);
        this.rs=stmt.executeQuery();
        while(this.rs.next()){
           usuarios.add(new Usuario (this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getString("password")));
        }
        
        return usuarios;
    }
    
}
