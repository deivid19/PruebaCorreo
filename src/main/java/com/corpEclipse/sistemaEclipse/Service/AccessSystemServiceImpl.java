/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.corpEclipse.sistemaEclipse.Service;

import com.corpEclipse.sistemaEclipse.DAO.AccessSystemDAO;
import com.corpEclipse.sistemaEclipse.Model.Usuario;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author AfroVocho
 */
@Service
public class AccessSystemServiceImpl implements AccessSystemService{
    
    @Autowired
    private AccessSystemDAO _accessystemdao;


    @Override
    public Usuario validaAcceso(String user, String password) {
        return _accessystemdao.validaAcceso(user, password);
    }

    @Override
    public Usuario obtenerUsuario(String id) {
        return _accessystemdao.obtenerUsuario(id);
    }

  
    
}
