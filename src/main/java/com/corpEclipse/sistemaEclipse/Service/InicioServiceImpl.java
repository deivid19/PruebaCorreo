/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.corpEclipse.sistemaEclipse.DAO.InicioDAO;

/**
 *
 * @author Deivid
 */
@Service
public class InicioServiceImpl implements InicioService {
    
    @Autowired
    private InicioDAO inicioDao;
    
    @Override
    public String sendForm(String nombre, String apellidos, String empresa, String telefono, String correo, String pais, String comentarios){
        return inicioDao.sendForm(nombre, apellidos, empresa, telefono, correo, pais, comentarios);
    }
    
}
