package com.corpEclipse.sistemaEclipse.Model;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name="usuarios")
public class Usuario {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id_usuario")
    private int id_usuario;
    
    @Column(name="nombre")
    private String nombre;
    
    @Column(name="appaternor")
    private String ap_pat;
    
    @Column(name="apmaterno")
    private String ap_mat;
    
    @Column(name="foto")
    private String foto;
    
    @Column(name="id_perfil")
    private int id_perfil;
    
    @Column(name="activo")
    private boolean activo;
    
    @Column(name="usuario")
    private String usuario;
    
    @Column(name="password")
    private String password;

    public Usuario() {
    }

    public Usuario(int id_usuario, String nombre, String ap_pat, String ap_mat, String foto, int id_perfil, boolean activo, String usuario, String password) {
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.ap_pat = ap_pat;
        this.ap_mat = ap_mat;
        this.foto = foto;
        this.id_perfil = id_perfil;
        this.activo = activo;
        this.usuario = usuario;
        this.password = password;
    }
    

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAp_pat() {
        return ap_pat;
    }

    public void setAp_pat(String ap_pat) {
        this.ap_pat = ap_pat;
    }

    public String getAp_mat() {
        return ap_mat;
    }

    public void setAp_mat(String ap_mat) {
        this.ap_mat = ap_mat;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getId_perfil() {
        return id_perfil;
    }

    public void setId_perfil(int id_perfil) {
        this.id_perfil = id_perfil;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
}
