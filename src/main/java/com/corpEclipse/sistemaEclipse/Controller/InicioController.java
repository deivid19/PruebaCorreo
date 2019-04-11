/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.corpEclipse.sistemaEclipse.Service.InicioService;

/**
 *
 * @author Deivid
 */
@Controller
@RequestMapping("/Inicio")
public class InicioController extends AccessSystemController {
    
    @Autowired
    public InicioService inicioService;

    static final Logger LOG = LogManager.getLogger(InicioController.class.getName());

    public ModelAndView _modelandview;
    public Map<String, Object> _model;

    @PostConstruct
    public void init() {
        LOG.debug("Crea instancia: " + InicioController.class.getName());
    }

    @PreDestroy
    public void destroy() {
        LOG.debug("Destruye instancia: " + InicioController.class.getName());
    }
    
    @RequestMapping(value = "/certificaciones", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView certificaciones(HttpServletRequest request) {

        System.out.println("certificaciones");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("inicioEclipse/certificaciones");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
    @RequestMapping(value = "/contacto", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView contacto(HttpServletRequest request) {
        System.out.println("contacto");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("inicioEclipse/contacto");
        _model = new HashMap<>();
        
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
    @RequestMapping(value = "/nosotros", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView nosotros(HttpServletRequest request) {

        System.out.println("nosotros");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("inicioEclipse/nosotros");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
    @RequestMapping(value = "/servicios", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView servicios(HttpServletRequest request) {

        System.out.println("servicios");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("inicioEclipse/servicios");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
    @RequestMapping(value = "/infraestructura", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView infraestructura(HttpServletRequest request) {

        System.out.println("infraestrucutra");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("inicioEclipse/infraestructura");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
    @RequestMapping(value = "/formu", method = {RequestMethod.GET, RequestMethod.POST})
    public String formu(HttpServletRequest request) {
        
        System.out.println("entra a enviarFormulario");

        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String empresa = request.getParameter("empresa");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String pais = request.getParameter("pais");
        String comentarios = request.getParameter("comentarios");
        String oculto = request.getParameter("oculto");
        
        System.out.println("Valor oculto" + oculto);
        
        if(oculto != ""){
           System.out.println("Bot" + oculto);
        }
        else{
            System.out.println("Valor oculto" + oculto);
        }
        
        String consultas = null;
        String _urlSalida = null;
        try{
            consultas = inicioService.sendForm(nombre, apellidos, empresa, telefono, correo, pais, comentarios);
        } catch(Exception e){
            LOG.error("Algo fue mal con sendForm" + e);
        }
        
        if (consultas.equals("1")) {
            _urlSalida = "redirect:/inicioEclipse/contacto";
        } else {
            _urlSalida = "redirect:/inicioEclipse/contacto";
        }
        return _urlSalida;
    }
    
}
