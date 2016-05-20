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
public class RedSocial {
    int idRedSocial;
    String nombre;
    public void setIdRedSocial(int idRedSocial) {
        this.idRedSocial = idRedSocial;
    }

    public void setNombre(String nombre) {
       this.nombre = nombre;
    }

    public int getIdRedSocial() {
       return this.idRedSocial;
    }

    public String getNombre() {
        return nombre;
    }
    
}
