
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Periodo;
import com.manosenelcodigo.modelos.PeriodoValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("addperiodo.htm")
public class AddPeriodoController {
     PeriodoValidar periodoValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddPeriodoController() 
    {
        this.periodoValidar=new PeriodoValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addperiodo");
        mav.addObject("periodo",new Periodo());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("periodo") Periodo u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.periodoValidar.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addperiodo");
            mav.addObject("periodo",new Periodo());
            return mav;
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into periodo (Nom_periodo, Matricula, Pension, Estado ) values (?,?,?,?)",
         u.getNom_periodo(),u.getMatricula(),u.getPension(),u.getEstado()
        );
         return new ModelAndView("redirect:/periodo.htm");
        }
       
    }
    
}
