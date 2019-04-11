/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Service;
import com.corpEclipse.sistemaEclipse.DAO.EquiposDAO;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author deivi
 */
@Service
public class EquiposServiceImpl implements EquiposService{
    
    @Autowired
    private EquiposDAO equiposDao;
    
    @Override
    public List<Object[]> getListaEquipos() {
        return equiposDao.getListaEquipos();
    }
    
}
