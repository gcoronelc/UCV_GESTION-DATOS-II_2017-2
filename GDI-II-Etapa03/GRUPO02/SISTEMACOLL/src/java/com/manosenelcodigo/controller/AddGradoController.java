
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Grado;
import com.manosenelcodigo.modelos.GradoValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("addgrado.htm")
public class AddGradoController {
    GradoValidar gradoValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddGradoController() 
    {
        this.gradoValidar=new GradoValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addgrado");
        mav.addObject("grado",new Grado());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("grado") Grado u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.gradoValidar.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addgrado");
            mav.addObject("grado",new Grado());
            return mav;
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into grado (Nombre ) values (?)",
         u.getNombre()
        );
         return new ModelAndView("redirect:/grado.htm");
        }
       
    }
}
