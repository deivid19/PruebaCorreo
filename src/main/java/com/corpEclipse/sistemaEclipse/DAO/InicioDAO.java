/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.DAO;

import java.util.List;

/**
 *
 * @author Deivid
 */
public interface InicioDAO {
  
    public String sendForm(String nombre, String apellidos, String empresa, String telefono, String correo, String pais, String comentarios);
    
}
