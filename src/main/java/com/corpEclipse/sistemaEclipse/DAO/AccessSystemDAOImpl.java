/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.DAO;

import com.corpEclipse.sistemaEclipse.Model.Usuario;
import com.corpEclipse.sistemaEclipse.Utils.Seguridad;
import com.corpEclipse.sistemaEclipse.Utils.Email;
import javax.annotation.Resource;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author AfroVocho
 */
@Transactional
@Repository
public class AccessSystemDAOImpl implements AccessSystemDAO {

    static final Logger LOG = LogManager.getLogger(AccessSystemDAOImpl.class.getName());
    private SessionFactory sessionFactory;

    @Override
    @Transactional(readOnly = true)
    public Usuario validaAcceso(String usuario, String pass) {

        LOG.error("Entra a validaAcceso");

         Usuario user = null;
         pass=Seguridad.encripta(pass);
         System.out.println("pass "+ pass);


        try {

 
            
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Usuario.class);
            Criterion ct_user = Restrictions.eq("usuario", usuario);
            Criterion ct_pass = Restrictions.eq("password",pass);
            Criterion ct_activo = Restrictions.eq("activo",true);
            Conjunction andExp = Restrictions.and(ct_user, ct_pass, ct_activo);
            criteria.add(andExp);
             user=(Usuario) criteria.uniqueResult();



        } catch (HibernateException e) {
            LOG.error("Error en validaAcceso: " + e.getMessage(), e);
        }
        return user;
    }

    @Override
    public Usuario obtenerUsuario(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public boolean getCorreo() {
        System.out.println("Entra a getCorreo");
        boolean varEmail = false;
        varEmail = Email.EnviarMail(); 
        System.out.println("Email Respuesta: " + varEmail);
        
        return true;
    }

   @Resource(name="sessionFactory")
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

}
