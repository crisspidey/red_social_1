package redsocial.dao;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import redsocial.vo.Comentario;


public class ComentarioDAO implements InterfazRedSocial<Comentario>{


    public List<Comentario> findAll() {
        List<Comentario> comentarios = null;
        String query = "SELECT * FROM Comentario";
        Connection conexion = Conexion.getConnection();
        try {
            Statement st = conexion.createStatement();
	    ResultSet rs = st.executeQuery(query);
            int idComentario = 0;
            String texto = null;
            Date fecha = null;
            
            while(rs.next()){
                if(comentarios==null){
                    comentarios = new ArrayList<Comentario>();
                }
                Comentario registro = new Comentario();
                idComentario = rs.getInt("idComentario");
                registro.setIdComentario(idComentario);
                
                texto = rs.getString("texto");
                registro.setTexto(texto);
                
                fecha = rs.getDate("fecha");
                registro.setFecha(fecha);
                
                comentarios.add(registro);
            }
            st.close();
        } catch (Exception e) {
            System.out.println("Error al listar comentarios.");
        }
        return comentarios;
    }

    public boolean insert(Comentario t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="INSERT INTO Comentario (idComentario, texto, fecha)" + "VALUES(?,?,?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdComentario());
            ps.setString(2, t.getTexto());
            ps.setDate(3, t.getFecha());
            
            resultado = ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;        
    }

    public boolean update(Comentario t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="UPDATE Comentario SET texto=?, fecha=? WHERE idComentario = ?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setString(1, t.getTexto());
            ps.setDate(2, t.getFecha());
            ps.setInt(3, t.getIdComentario());
            if (ps.executeUpdate() > 0){
		    	resultado=true;
		    }
            } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public boolean delete(Comentario t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="DELETE FROM Comentario WHERE idComentario = ?";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdComentario());
            resultado= ps.execute();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    } 
}
