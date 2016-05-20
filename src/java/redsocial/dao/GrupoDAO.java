/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package redsocial.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import redsocial.vo.Grupo;

/**
 *
 * @author G40
 */
public class GrupoDAO implements InterfazRedSocial<Grupo>{

    @Override
    public List<Grupo> findAll() {
        List<Grupo> grupos = null;
        String query = "SELECT * FROM Grupo";
        Connection conexion = Conexion.getConnection();
        try {
            Statement st = conexion.createStatement();
	    ResultSet rs = st.executeQuery(query);
            int idGrupo = 0;
            String nombre = null;
            
            while(rs.next()){
                if(grupos==null){
                    grupos = new ArrayList<Grupo>();
                }
                Grupo registro = new Grupo();
                idGrupo = rs.getInt("idGrupo");
                registro.setIdGrupo(idGrupo);
                
                nombre = rs.getString("nombre");
                registro.setNombre(nombre);
                                
                grupos.add(registro);
            }
            st.close();
        } catch (Exception e) {
            System.out.println("Error al listar grupos.");
        }
        return grupos;
    }

    @Override
    public boolean insert(Grupo t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="INSERT INTO Grupo (idGrupo, nombre)" + "VALUES(?,?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdGrupo());
            ps.setString(2, t.getNombre());
            
            resultado = ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    @Override
    public boolean update(Grupo t) {
         boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="UPDATE Grupo SET nombre=? WHERE idGrupo = ?)";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setString(1, t.getNombre());
            ps.setInt(3, t.getIdGrupo());
            if (ps.executeUpdate() > 0){
		    	resultado=true;
		    }
            } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }

    @Override
    public boolean delete(Grupo t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query ="DELETE FROM Grupo WHERE idGrupo = ?";
        PreparedStatement ps = null;
        try {
            ps=conexion.prepareStatement(query);
            ps.setInt(1, t.getIdGrupo());
            resultado= ps.execute();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }
}
