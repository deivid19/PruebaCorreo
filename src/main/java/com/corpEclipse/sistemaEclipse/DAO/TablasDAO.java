/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.DAO;

import java.util.List;

/**
 *
 * @author deivi
 */
public interface TablasDAO {
    
    // Obtiene la lista de empleados
    public  List<Object[]>  getListaEmpleados();
    
    // Obtiene la lista de puestos
    public  List<Object[]>  getListaPuesto();
    
    // Agregar nuevo empleado
    public  String  insertarEmpleado(String nombre, String numSeguro, String ubicacion, String puesto);
    
    //modificar empleado
    public  String  modificarEmpleado(String idEmpleado, String nombre, String numSeguro, String ubicacion, String puesto);
    
    //eliminar empleado
    public  String  eliminarEmpleado(String idEmpleado);
    
}
