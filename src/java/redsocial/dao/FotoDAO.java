/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package redsocial.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
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
            
            while(rs.next()){
                if(fotos== null){
                    fotos = new ArrayList<Foto>();
                }
                
                Foto registro = new Foto();
                idFoto = rs.getInt("idFoto");
                registro.setIdFoto(idFoto);
                
                nombre = rs.getString("nombre");
                registro.setNombre(nombre);
                
                descripcion = rs.getString("descripcion");
                registro.setDescripcion(descripcion);
            }
        }catch (Exception e) {
            System.out.println("Error al listar fotos.");
        }
        return fotos;
    }

    @Override
    public boolean insert(Foto t) {
        boolean resultado = false;
        Connection conexion = Conexion.getConnection();
        String query="INSERT INTO Foto(nombre,descripcion)" + "VALUES(?,?)";
        PreparedStatement ps = null;
        try{
            ps=conexion.prepareStatement(query);
            ps.setString(1,t.getNombre());
            ps.setString(2, t.getDescripcion());
            resultado = ps.execute();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
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
