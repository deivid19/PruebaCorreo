/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.DAO;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author deivi
 */
@Transactional
@Repository
public class TablasDAOImpl implements TablasDAO{
    
    static final Logger LOG = LogManager.getLogger(TablasDAOImpl.class.getName());
    private SessionFactory sessionFactory;

    @Resource(name = "sessionFactory")
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    @Override
    @Transactional(readOnly = true)
    public List<Object[]> getListaEmpleados() {
        List<Object[]> lista = new ArrayList();

        final String consulta = "SELECT emp.id_empleado, emp.nom_empleado, emp.num_seguro, emp.ubicacion, pst.puesto, emp.puesto AS puestoEmp\n"
                + "FROM empleados AS emp, cat_puesto AS pst\n"
                + "WHERE emp.estatus = 'true' AND emp.puesto = pst.id_puesto\n"
                + "ORDER BY emp.nom_empleado;";
        try {
            Session session = sessionFactory.getCurrentSession();

            System.out.println(consulta);
            Query query = session.createSQLQuery(consulta);

            lista = query.list();

        } catch (HibernateException e) {
            LOG.error("Error en getListaEmpleados: " + e.getMessage(), e);
        }
        return lista;
    }
    
    @Override
    @Transactional(readOnly = true)
    public List<Object[]> getListaPuesto() {
        List<Object[]> lista = new ArrayList();

        final String consulta = "SELECT id_puesto, puesto\n"
                + "FROM cat_puesto\n"
                + "WHERE estatus = 'true';";
        try {
            Session session = sessionFactory.getCurrentSession();

            System.out.println(consulta);
            Query query = session.createSQLQuery(consulta);

            lista = query.list();

        } catch (HibernateException e) {
            LOG.error("Error en getListaEmpleados: " + e.getMessage(), e);
        }
        return lista;
    }
    
    @Override
    public String insertarEmpleado(String nombre, String numSeguro, String ubicacion, String puesto) {
        LOG.debug("insertarEmpleado");
        String consulta = null;

        consulta = "INSERT INTO empleados\n"
                 + "(nom_empleado, num_seguro, ubicacion, puesto, qr, estatus)\n"
                 + "VALUES('" + nombre + "'," + numSeguro + ",'" + ubicacion + "','" + puesto + ", 'true'" + "');";

        System.out.println(" query: " + consulta);

        String respuesta = "";
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createSQLQuery(consulta);
            query.executeUpdate();
            respuesta = "1";
        } catch (HibernateException e) {
            LOG.error("Error en insertarEmpleado: " + e.getMessage(), e);
            respuesta = "0";
        }

        return respuesta;
    }
    
    @Override
    public String modificarEmpleado(String idEmpleado, String nombre, String numSeguro, String ubicacion, String puesto) {
        LOG.debug("insertarEmpleado");
        String consulta = null;

        consulta = "UPDATE empleados\n"
                 + "SET nom_empleado = '" + nombre + "', num_seguro = " + numSeguro + ", ubicacion = '" + ubicacion + "', puesto = '" + puesto + "'\n"
                 + "WHERE id_empleado =" + idEmpleado + ";";

        System.out.println(" query: " + consulta);

        String respuesta = "";
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createSQLQuery(consulta);
            query.executeUpdate();
            respuesta = "1";
        } catch (HibernateException e) {
            LOG.error("Error en modificarEmpleado: " + e.getMessage(), e);
            respuesta = "0";
        }

        return respuesta;
    }
    
    @Override
    public String eliminarEmpleado(String idEmpleado) {
        LOG.debug("eliminarEmpleado");
        String consulta = null;

        consulta = "UPDATE empleados\n"
                 + "SET estatus = 'false'"
                 + "WHERE id_empleado = " + idEmpleado + ";";

        System.out.println(" query: " + consulta);

        String respuesta = "";
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createSQLQuery(consulta);
            query.executeUpdate();
            respuesta = "1";
        } catch (HibernateException e) {
            LOG.error("Error en eliminarEmpleado: " + e.getMessage(), e);
            respuesta = "0";
        }

        return respuesta;
    }
    
}
