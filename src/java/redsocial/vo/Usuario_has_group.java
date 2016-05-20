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
public class Usuario_has_group {
    private Usuario user;

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public Grupo getGroup() {
        return group;
    }

    public void setGroup(Grupo group) {
        this.group = group;
    }
    private Grupo group;
}
