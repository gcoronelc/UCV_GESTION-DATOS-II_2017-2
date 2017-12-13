
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class RolController {
   
    private JdbcTemplate jdbcTemplate;

    public RolController() {
        Conectar con = new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("rol.htm")
    public ModelAndView grado()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from rol order by IDRol desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("rol");
        return mav;
    } 
}
