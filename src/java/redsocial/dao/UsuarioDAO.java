package redsocial.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import redsocial.vo.RedSocial;
import redsocial.vo.Usuario;

public class UsuarioDAO implements InterfazRedSocial<Usuario>{

    public List<Usuario> findAll() {
      List<Usuario> usuarios = null;
        String query = "SELECT * FROM Usuario";
        Connection conexion = Conexion.getConnection();
        try {
            Statement st = conexion.createStatement();
	    ResultSet rs = st.executeQuery(query);
            int idUsuario = 0;
            String nombre = null;
            String nick = null;
            int edad = 0;
            String clave = null;
            String correo = null;
            
            while(rs.next()){
                if(usuarios==null){
                    usuarios = new ArrayList<Usuario>();
                }
                Usuario registro = new Usuario();
                idUsuario = rs.getInt("idUsuario");
                registro.setIdUsuario(idUsuario);
                
                nombre = rs.getString("nombre");
                registro.setNombre(nombre);
                
                nick = rs.getString("nick");
                registro.setNick(nick);
                
                edad = rs.getInt("edad");
                registro.setEdad(edad);
                
                clave = rs.getString("clave");
                registro.setClave(clave);
                
                correo = rs.getString("correo");
                registro.setCorreo(correo);
                             
                usuarios.add(registro);
            }
            st.close();
        } catch (Exception e) {
            System.out.println("Error al listar comentarios.");
        }
        return usuarios;
    }

    public boolean insert(Usuario t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="INSERT INTO Usuario (idUsuario, nombre, nick, edad, clave, correo,RedSocial_idRedSocial)" + "VALUES(?,?,?,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdUsuario());
            ps.setString(2, t.getNombre());
            ps.setString(3, t.getNick());
            ps.setInt(4, t.getEdad());
            ps.setString(5, t.getClave());
            ps.setString(6, t.getCorreo());
            ps.setInt(7, t.getRedsocial().getIdRedSocial());
            
            resultado = ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public boolean update(Usuario t) {
         boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="UPDATE Usuario SET nombre=?, nick=?, edad=?, clave=?, correo=?, WHERE idUsuario = ?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setString(1, t.getNombre());
            ps.setString(3, t.getNick());
            ps.setInt(4, t.getEdad());
            ps.setString(5, t.getClave());
            ps.setString(6, t.getCorreo());
            ps.setInt(1, t.getIdUsuario());
            if (ps.executeUpdate() > 0){
		    	resultado=true;
		    }
            } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public boolean delete(Usuario t) {
      boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="DELETE FROM Usuario WHERE idUsuario = ?";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdUsuario());
            resultado= ps.execute();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    } 
    
    public boolean login(Usuario t) {
        boolean resultado = false;
        boolean log = false;
        Connection conexion = Conexion.getConnection();
        String query ="SELECT nick, clave FROM Usuario WHERE nick = ? AND clave = ?";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareCall(query);
            ps.setString(1, t.getNick());
            ps.setString(2, t.getClave());
            resultado = ps.execute();
            if(resultado){
                log = resultado;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return log;
    }
}