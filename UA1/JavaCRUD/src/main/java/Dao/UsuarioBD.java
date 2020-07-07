
package Dao;


import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UsuarioBD {
    private static final String Listado="SELECT * FROM usuarios";
    private static final String Insertado="INSERT INTO usuarios SET usuario=?, password=md5(?), edad=?";
    private static final String Buscar="SELECT * FROM usuarios WHERE id_user=?";
    private static final String EditarUser="UPDATE usuarios SET usuario=? WHERE id_usuario=? ";
    private static final String Eliminar="DELETE FROM usuarios WHERE id_usuario=?";
    private static final String consultaPassword= "SELECT * FROM usuarios WHERE id_usuario=? AND password=md5(?);";
    private static final String editaPassword= "UPDATE usuarios SET password=md5(?) WHERE id_usuario=?";

    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    
    public List<Usuario> ListadoUsuario()throws SQLException {
        List<Usuario> usuarios=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.Listado); 
        this.rs=this.stmt.executeQuery();
        while (this.rs.next()){
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getString("password"), this.rs.getInt("edad")));
            
        }   
        return usuarios;
    }
    
    public boolean InsertarUsuario(Usuario usuario) throws SQLException{
        this.stmt=this.conexion.prepareStatement(Insertado);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setString(2, usuario.getPassword());
        this.stmt.setInt(3, usuario.getEdad());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public String BuscarUsuario(Usuario usuario) throws SQLException{
        String user="";
        this.stmt=this.conexion.prepareStatement(Buscar);
        this.stmt.setInt(1, usuario.getId_usuario());
        this.rs=this.stmt.executeQuery();
        this.rs.next();
        user=this.rs.getString("usuario");
        
        return user;
    }
    
    public boolean EditarUsuario(int id, String usuario) throws SQLException{
        this.stmt=this.conexion.prepareStatement(EditarUser);
        this.stmt.setString(1, usuario);
        this.stmt.setInt(2, id);
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
   
   
    
    public boolean EliminarUsuario(int id) throws SQLException{
        this.stmt=this.conexion.prepareStatement(Eliminar);
        this.stmt.setInt(1, id);
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
        
    }
    
    public boolean verificarPassword(int id, String password) throws SQLException{
        this.stmt = this.conexion.prepareStatement(consultaPassword);
        this.stmt.setInt(1,id);
        this.stmt.setString(2,password);
        this.rs = this.stmt.executeQuery();
        if(this.rs.next()){
            return true;
        }else{
            return false;
        }
    }
    
    public int editarPassword(String password, int id) throws SQLException{
        this.stmt = this.conexion.prepareStatement(editaPassword);
        this.stmt.setString(1, password);
        this.stmt.setInt(2, id);
        return this.stmt.executeUpdate();
    }

    
    
}
