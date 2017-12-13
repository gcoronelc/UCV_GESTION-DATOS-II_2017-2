
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class GradoController 
{
    private JdbcTemplate jdbcTemplate;

    public GradoController() {
        Conectar con = new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("grado.htm")
    public ModelAndView grado()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from grado order by IDGrado desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("grado");
        return mav;
    }
}
