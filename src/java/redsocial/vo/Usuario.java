/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package redsocial.vo;

/**
 *
 * @author andresfelipe
 */
public class Usuario {
    private int idUsuario;
    private String nombre;
    private String nick;
    private int edad;
    private String clave;
    private String correo;
    private RedSocial redsocial;
   
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    public RedSocial getRedsocial() {
        return redsocial;
    }

    public void setRedsocial(RedSocial redsocial) {
        this.redsocial = redsocial;
    }

    public Grupo getGrupo() {
        return grupo;
    }
    
    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }
    
    public Foto getFoto() {
        return foto;
}

    public void setFoto(Foto foto) {
        this.foto = foto;
    }
    private Grupo grupo;
    private Foto foto;
    
}
