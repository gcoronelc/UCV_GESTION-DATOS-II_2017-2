
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class EmpleadoController {
    
    private JdbcTemplate jdbcTemplate;

    public EmpleadoController() {
        Conectar con = new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("empleado.htm")
    public ModelAndView empleado()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from empleado order by IDEmpleado desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("empleado");
        return mav;
    }
}
