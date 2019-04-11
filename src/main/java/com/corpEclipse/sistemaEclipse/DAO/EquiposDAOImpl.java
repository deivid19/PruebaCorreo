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
public class EquiposDAOImpl implements EquiposDAO{
    
    static final Logger LOG = LogManager.getLogger(EquiposDAOImpl.class.getName());
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
    public List<Object[]> getListaEquipos() {
        List<Object[]> lista = new ArrayList();

        final String consulta = "SELECT COALESCE(comp.id_eq_comp,'0') AS id_comp, emp.id_empleado, emp.nom_empleado, COALESCE(comp.nom_laptop,'-') AS laptop, "
                + "              COALESCE(cel.id_eq_celulares,'0') AS id_cel, COALESCE(cel.nombre,'-') AS celular\n" +
                                "FROM empleados AS emp\n" +
                                "LEFT JOIN eq_computadoras AS comp ON CONVERT(char(255), emp.id_empleado) = comp.id_empleado\n" +
                                "LEFT JOIN eq_celulares AS cel ON CONVERT(char(255), emp.id_empleado) = cel.id_empleado\n" +
                                "ORDER BY emp.nom_empleado ASC;";
        try {
            Session session = sessionFactory.getCurrentSession();

            System.out.println(consulta);
            Query query = session.createSQLQuery(consulta);

            lista = query.list();

        } catch (HibernateException e) {
            LOG.error("Error en getListaEquipos: " + e.getMessage(), e);
        }
        return lista;
    }
    
}
