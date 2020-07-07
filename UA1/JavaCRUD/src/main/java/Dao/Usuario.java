package Dao;

/**
 *
 * @author Kevin_Paez
 */
public class Usuario {
    private int id_usuario;
    private String usuario;
    private String password;
    private int edad;
    
    public Usuario(){
        
    }

    public Usuario(int id_usuario, String usuario, String password, int edad) {
        this.id_usuario = id_usuario;
        this.usuario = usuario;
        this.password = password;
        this.edad = edad;
    }

    public Usuario(String nombre, String password, int edad) {
        this.usuario = nombre;
        this.password = password;
        this.edad = edad;
    }

    public Usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Usuario(int id_usuario, String password) {
        this.id_usuario = id_usuario;
        this.password = password;
    }
    
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_user) {
        this.id_usuario = id_user;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_usuario=" + id_usuario + ", nombre=" + usuario + ", password=" + password + ", edad=" + edad + '}';
    }

  
    
    
    
}
