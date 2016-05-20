package redsocial.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import redsocial.vo.RedSocial;

public class RedSocialDAO implements InterfazRedSocial<RedSocial>{

    @Override
    public List<RedSocial> findAll() {
        List<RedSocial> redes = null;
        String query = "SELECT * FROM RedSocial";
        Connection conexion = Conexion.getConnection();
        try {
            Statement st = conexion.createStatement();
	    ResultSet rs = st.executeQuery(query);
            int idRedSocial = 0;
            String nombre = null;
            
            while(rs.next()){
                if(redes==null){
                    redes = new ArrayList<RedSocial>();
                }
                RedSocial registro = new RedSocial();
                idRedSocial = rs.getInt("idRedSocial");
                registro.setIdRedSocial(idRedSocial);
                
                nombre = rs.getString("nombre");
                registro.setNombre(nombre);
                
                redes.add(registro);
            }
            st.close();
        } catch (Exception e) {
            System.out.println("Error al listar las redes."+e);
        }
        return redes;
    }

    public boolean insert(RedSocial t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="INSERT INTO RedSocial (idRedSocial, nombre)" + "VALUES(?,?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdRedSocial());
            ps.setString(2, t.getNombre());
            resultado = ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public boolean update(RedSocial t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="UPDATE RedSocial SET nombre=? WHERE idRedSocial = ?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setString(1, t.getNombre());
            ps.setInt(2, t.getIdRedSocial());
            if (ps.executeUpdate() > 0){
		    	resultado=true;
		    }
            } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    public boolean delete(RedSocial t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="DELETE FROM RedSocial WHERE idRedSocial = ?";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdRedSocial());
            resultado= ps.execute();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    } 
}
