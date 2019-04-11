/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Service;

import com.corpEclipse.sistemaEclipse.DAO.TablasDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author deivi
 */
@Service
public class TablasServiceImpl implements TablasService{
    
    @Autowired
    private TablasDAO tablasDao;
    
    @Override
    public List<Object[]> getListaEmpleados() {
        return tablasDao.getListaEmpleados();
    }
    
    @Override
    public List<Object[]> getListaPuesto() {
        return tablasDao.getListaPuesto();
    }
    
    @Override
    public String insertarEmpleado(String nombre, String numSeguro, String ubicacion, String puesto) {
        return tablasDao.insertarEmpleado(nombre, numSeguro, ubicacion, puesto);
    }
    
    @Override
    public String modificarEmpleado(String idEmpleado, String nombre, String numSeguro, String ubicacion, String puesto) {
        return tablasDao.modificarEmpleado(idEmpleado, nombre, numSeguro, ubicacion, puesto);
    }
    
    @Override
    public String eliminarEmpleado(String idEmpleado) {
        return tablasDao.eliminarEmpleado(idEmpleado);
    }
    
}
