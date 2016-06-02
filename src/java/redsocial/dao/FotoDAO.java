/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package redsocial.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import redsocial.vo.Foto;
import java.util.List;

/**
 *
 * @author Felipe
 */
public class FotoDAO implements InterfazRedSocial<Foto>{

    @Override
    public List<Foto> findAll() {
        List<Foto> fotos = null;
        String query = "SELECT * FROM Foto";
        Connection conexion = Conexion.getConnection();
        try{
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery(query);
            int idFoto = 0;
            String nombre = null;
            String descripcion = null;
        }catch (Exception e) {
            System.out.println("Error al listar fotos.");
        }
        return fotos;
    }

    @Override
    public boolean insert(Foto t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Foto t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Foto t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
