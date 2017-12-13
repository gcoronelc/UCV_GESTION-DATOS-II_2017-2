
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Tobligacion;
import com.manosenelcodigo.modelos.TobligacionValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("addtobligacion.htm")
public class AddTobligacionController {
    TobligacionValidar tobligacionValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddTobligacionController() 
    {
        this.tobligacionValidar=new TobligacionValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addtobligacion");
        mav.addObject("tobligacion",new Tobligacion());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("tobligacion") Tobligacion u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.tobligacionValidar.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addtobligacion");
            mav.addObject("tobligacion",new Tobligacion());
            return mav;
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into tobligacion (Nombre,Mora ) values (?,?)",
         u.getNombre(), u.getMora()
        );
         return new ModelAndView("redirect:/tobligacion.htm");
        }
       
    }  
}
