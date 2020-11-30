
package conecta;

import java.sql.*;

public class conectaBD {
    
    private Connection conexion=null;
    
    //Método que retorna null si la conexion fue exitosa.
    public String conecta(){
        String mensaje = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String servidor = "jdbc:mysql://localfsghost/";
            String usuario = "root";
            String contrasenia = "";
            conexion = DriverManager.getConnection(servidor, usuario, contrasenia); 
        }
        catch(ClassNotFoundException ex){
            mensaje = "Hubo un error al conectar: " + ex.getMessage();
        }
        catch(Exception ex){
            mensaje = "Hubo un error al conectar: " + ex.getMessage();               
        }
        finally{
            return mensaje;
        }
    }
    
    //Método get de conexion.
    public Connection getConexion() {
        return conexion;
    }
}