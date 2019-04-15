package com.corpEclipse.sistemaEclipse.Controller;

import com.corpEclipse.sistemaEclipse.Model.Usuario;
import com.corpEclipse.sistemaEclipse.Service.AccessSystemService;
import java.io.Serializable;
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
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luisito
 */
@Controller
@Scope(value = "session")
public class AccessSystemController implements Serializable {

    @Autowired
    public AccessSystemService _accessystemservice;

    public ModelAndView _modelandview;
    public Map<String, Object> _model;

    private static final Logger LOG = LogManager.getLogger(AccessSystemController.class.getName());

    @PostConstruct
    public void init() {
        LOG.debug("Crea instancia: " + AccessSystemController.class.getName());
    }

    @PreDestroy
    public void destroy() {
        LOG.debug("Destruye instancia: " + AccessSystemController.class.getName());
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String L1(HttpServletRequest request) {
        return "redirect:login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView Logout(HttpServletRequest request) {
        _modelandview = new ModelAndView();
        _modelandview.setViewName("login");
        request.getSession().invalidate();
        return _modelandview;

    }

    // Redireccionar a login_usuario
    @RequestMapping(value = "/validaruser", method = RequestMethod.POST)
    // <editor-fold defaultstate="collapsed" desc="vista login">
    public String redirige(HttpServletRequest request) {

        System.out.println("Peticion: /validaruser");

        /*servicio de validacion*/
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        _model = new HashMap<>();

        System.out.println("usuario: " + usuario);
        System.out.println("password: " + password);

        String _urlsalida = "";

        if (usuario == null || usuario.equals("") || password.equals("")) {

            _urlsalida = "redirect:/errorlogin";

        } else {
            if (usuario.equals("admin") && password.equals("admin")) {
                _urlsalida = "redirect:/tablas/visualizar";
            } else {
                _urlsalida = "redirect:/errorlogin";
            }

        }

        /*
            List<Object[]> respuesta = null;
            boolean actualizo = false;

            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");

            String _urlsalida = "";

            //System.out.println("pass: " + password + " usuario: " + usuario);
            respuesta = _accessystemservice.getCredenciales(usuario, password);
            //int r=Integer.parseInt(respuesta);

            if (respuesta != null) {
                _urlsalida = "redirect:/tablas/push_notifications";
            } else {
                _urlsalida = "redirect:/errorlogin";
            }

            return _urlsalida;
        */
        
        return _urlsalida;
    }

    @RequestMapping(value = "/registro", method = RequestMethod.GET)
    public ModelAndView registro(HttpServletRequest request) {
        _modelandview = new ModelAndView();
        _modelandview.setViewName("registro");
        return _modelandview;

    }

    @RequestMapping(value = "/errorlogin", method = RequestMethod.GET)
    public ModelAndView errorlogin(HttpServletRequest request) {
        _modelandview = new ModelAndView();
        _modelandview.setViewName("errorPerfil");
        //request.getSession().invalidate();
        return _modelandview;

    }

    @RequestMapping(value = "/error404")
    // <editor-fold defaultstate="collapsed" desc="vista login">
    public String e404(HttpServletRequest request, Exception e) {
        LOG.error("Error 404: " + e.getMessage(), e);
        return "redirect:/Error404";
    }

    @RequestMapping(value = "/Error404")
    // <editor-fold defaultstate="collapsed" desc="vista login">
    public ModelAndView error404(HttpServletRequest request) {
        _modelandview = new ModelAndView();
        _modelandview.setViewName("error404");
        return _modelandview;
    }

    @RequestMapping(value = "/error500")
    // <editor-fold defaultstate="collapsed" desc="vista login">
    public String e500(HttpServletRequest request, Exception e) {
        LOG.error("Error 500: " + e.getMessage(), e);
        return "redirect:/Error500";
    }

    @RequestMapping(value = "/Error500")
    // <editor-fold defaultstate="collapsed" desc="vista login">
    public ModelAndView error500(HttpServletRequest request, Exception e) {

        _modelandview = new ModelAndView();
        _modelandview.setViewName("error500");
        return _modelandview;
    }
    
    @RequestMapping(value = "/pruebaCorreo", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView pruebaCorreo(HttpServletRequest request) {
        
        boolean respuesta = false;

        System.out.println("pruebaCorreo");
        _modelandview = new ModelAndView();
        _modelandview.setViewName("pruebaCorreo");
        _model = new HashMap<>();
        _modelandview.addAllObjects(_model);
        
        try{
            respuesta = _accessystemservice.getCorreo();
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        System.out.println("Respuesta: " + respuesta);

        return _modelandview;
    }

}
