/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author cgang
 */
public class Conexion {
    
    private Connection conexion = null;
    private static final String localhost ="192-168.64.24";
    private static final String usuario ="admin";
    private static final String password ="admin123";
    private static final String bd ="usuarios";
    
    
    public Connection getConexion(){
        try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "admin", "admin123");
    }catch(Exception e){
        System.out.println("Error");
    }finally{
            return conexion;
        }
    }
    
}
