
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Rol;
import com.manosenelcodigo.modelos.RolValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("addrol.htm")
public class AddRolController {
      RolValidar rolValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddRolController() 
    {
        this.rolValidar=new RolValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addrol");
        mav.addObject("rol",new Rol());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("rol") Rol u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.rolValidar.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addrol");
            mav.addObject("rol",new Rol());
            return mav;
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into rol (Nombre ) values (?)",
         u.getNombre()
        );
         return new ModelAndView("redirect:/rol.htm");
        }
       
    }
    
}
