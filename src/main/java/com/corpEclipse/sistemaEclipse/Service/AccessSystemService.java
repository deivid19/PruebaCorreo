/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.corpEclipse.sistemaEclipse.Service;

import com.corpEclipse.sistemaEclipse.Model.Usuario;
import java.util.List;



/**
 *
 * @author AfroVocho
 */
public interface AccessSystemService {
    public Usuario validaAcceso(String user, String password);
    public Usuario obtenerUsuario(String id);
    
    public boolean getCorreo();
}
