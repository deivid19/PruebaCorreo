/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Controller;

import com.corpEclipse.sistemaEclipse.Service.EquiposService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author deivi
 */
@Controller
@RequestMapping("/equipos")
public class EquiposController {
    
    @Autowired
    public EquiposService equiposService;

    static final Logger LOG = LogManager.getLogger(EquiposController.class.getName());

    public ModelAndView _modelandview;
    public Map<String, Object> _model;

    @PostConstruct
    public void init() {
        LOG.debug("Crea instancia: " + EquiposController.class.getName());
    }

    @PreDestroy
    public void destroy() {
        LOG.debug("Destruye instancia: " + EquiposController.class.getName());
    }
    
    @RequestMapping(value = "/verTodos", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView equipos(HttpServletRequest request) {

        System.out.println("equipos");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("equipos/equiposTodos");
        _model = new HashMap<>();

        try {
            List<Object[]> list_eqp = new ArrayList();
            list_eqp = equiposService.getListaEquipos();
            System.out.println("lista: " + list_eqp);
            _model.put("listaEquipos", list_eqp);
        } catch (Exception e) {
            LOG.error("Algo fue mal con el servicio getListaEquipos" + e);
        }

        _modelandview.addAllObjects(_model);

        return _modelandview;
    }
    
}
