/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Controller;

import com.corpEclipse.sistemaEclipse.Service.TablasService;
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
@RequestMapping("/tablas")
public class TablasController extends AccessSystemController {

    @Autowired
    public TablasService tablasService;

    static final Logger LOG = LogManager.getLogger(TablasController.class.getName());

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

    @RequestMapping(value = "/visualizar", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView visualizar(HttpServletRequest request) {

        System.out.println("visualizar");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("tablas/visualizar");
        _model = new HashMap<>();

        try {
            List<Object[]> list_emp = new ArrayList();
            list_emp = tablasService.getListaEmpleados();
            System.out.println("lista: " + list_emp);
            _model.put("listaEmpleados", list_emp);
        } catch (Exception e) {
            LOG.error("Algo fue mal con el servicio getListaUsuarios" + e);
        }

        _modelandview.addAllObjects(_model);

        return _modelandview;
    }

    @RequestMapping(value = "/nuevo", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView nuevo(HttpServletRequest request) {

        System.out.println("nuevo");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("tablas/nuevo");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);

        return _modelandview;
    }

    @RequestMapping(value = "/modificar", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView modificar(HttpServletRequest request) {

        System.out.println("modificar");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("tablas/modificar");
        _model = new HashMap<>();

        try {
            List<Object[]> list_pst = new ArrayList();
            list_pst = tablasService.getListaPuesto();
            System.out.println("lista: " + list_pst);
            _model.put("listaPuesto", list_pst);
        } catch (Exception e) {
            LOG.error("Algo fue mal con el servicio getListaPuesto" + e);
        }

        String idEmpleado = request.getParameter("idEmpleado");
        String getNombre = request.getParameter("getNombre");
        String getNumSeguro = request.getParameter("getNumSeguro");
        String getUbicacion = request.getParameter("getUbicacion");
        String getPuesto = request.getParameter("getPuesto");

        System.out.println("actuaConc");
        System.out.println("idEmpleado: " + idEmpleado);

        _model.put("idEmpleado", idEmpleado);
        _model.put("getNombre", getNombre);
        _model.put("getNumSeguro", getNumSeguro);
        _model.put("getUbicacion", getUbicacion);
        _model.put("getPuesto", getPuesto);

        _modelandview.addAllObjects(_model);

        return _modelandview;
    }

    @RequestMapping(value = "/usuarios", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView usuarios(HttpServletRequest request) {

        System.out.println("usuarios");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("tablas/usuarios");
        _model = new HashMap<>();

        try {
            List<Object[]> list_emp = new ArrayList();
            list_emp = tablasService.getListaEmpleados();
            _model.put("listaEmpleados", list_emp);
        } catch (Exception e) {
            LOG.error("Algo fue mal con el servicio getListaEmpleados" + e);
        }

        _modelandview.addAllObjects(_model);

        return _modelandview;
    }

    @RequestMapping(value = {"/nuevoEmpleado"}, method = {org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
    public String nuevoEmpleado(HttpServletRequest request) {

        String nombre = request.getParameter("nombreCom");
        String numSeguro = request.getParameter("numSeguro");
        String ubicacion = request.getParameter("ubicacion");
        String puesto = request.getParameter("puesto");
        //String qr = request.getParameter("qr");

        String consulta = null;
        String _urlsalida = null;
        try {
            consulta = tablasService.insertarEmpleado(nombre, numSeguro, ubicacion, puesto);
        } catch (Exception e) {
            LOG.error("Algo fue mal con insertarEmpleado " + e);
        }
        if (consulta.equals("1")) {

            _urlsalida = "redirect:/tablas/visualizar";
        }

        System.out.println("consulta: " + consulta);
        return _urlsalida;
    }

    @RequestMapping(value = {"/modificaEmpleado"}, method = {org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
    public String modificaEmpleado(HttpServletRequest request) {

        String idEmpleado = request.getParameter("id");
        String nuevoNombre = request.getParameter("newNombre");
        String nuevoSeguro = request.getParameter("newNumSeguro");
        String nuevaUbicacion = request.getParameter("newUbicacion");
        String nuevoPuesto = request.getParameter("newPuesto");
        //String qr = request.getParameter("qr");

        String consulta = null;
        String _urlsalida = null;
        try {
            consulta = tablasService.modificarEmpleado(idEmpleado, nuevoNombre, nuevoSeguro, nuevaUbicacion, nuevoPuesto);
        } catch (Exception e) {
            LOG.error("Algo fue mal con modificaEmpleado " + e);
        }
        if (consulta.equals("1")) {

            _urlsalida = "redirect:/tablas/visualizar";
        }

        System.out.println("consulta: " + consulta);
        return _urlsalida;
    }

}
