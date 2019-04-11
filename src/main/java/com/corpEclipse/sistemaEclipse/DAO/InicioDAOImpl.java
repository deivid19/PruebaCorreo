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
 * @author Deivid
 */

@Transactional
@Repository
public class InicioDAOImpl implements InicioDAO {
    
    static final Logger LOG = LogManager.getLogger(InicioDAOImpl.class.getName());
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
    public String sendForm(String nombre, String apellidos, String empresa, String telefono, String correo, String pais, String comentarios) {
        
        String respuesta ="";
        final String storeForm = "exec dbo.sp_registro '" + nombre + "','" + apellidos + "','" + empresa + "'," + telefono + ",'" + correo + "','" + pais + "','" + comentarios + "', 'Eclipse'" + ";";

        try {
            Session session = sessionFactory.getCurrentSession();
            System.out.println(storeForm);
            org.hibernate.query.Query query = session.createSQLQuery(storeForm);
            query.executeUpdate();
            respuesta ="0";
            LOG.info("resultado: " + respuesta);

        } catch (HibernateException e) {
            LOG.error("Error en sendForm: " + e.getMessage(), e);
            respuesta = "1";
        } catch (Exception e) {
            LOG.error("Error en runtime de sendForm: " + e.getMessage(), e);
        }
        
        return respuesta;
    }
    
}
