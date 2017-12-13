
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class EstudianteController {
     private JdbcTemplate jdbcTemplate;

    public EstudianteController() {
        Conectar con = new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("estudiante.htm")
    public ModelAndView estudiante()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from estudiante order by IDEstudiante desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("estudiante");
        return mav;
    }
}
