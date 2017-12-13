
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Nivel;
import com.manosenelcodigo.modelos.NivelValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("addnivel.htm")
public class AddNivelController {
    NivelValidar nivelValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddNivelController() 
    {
        this.nivelValidar=new NivelValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addnivel");
        mav.addObject("nivel",new Nivel());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("nivel") Nivel u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.nivelValidar.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addnivel");
            mav.addObject("nivel",new Nivel());
            return mav;
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into nivel (Nombre ) values (?)",
         u.getNombre()
        );
         return new ModelAndView("redirect:/nivel.htm");
        }
       
    }
    
}
