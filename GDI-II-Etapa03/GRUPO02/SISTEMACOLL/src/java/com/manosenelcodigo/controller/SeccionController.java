package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class SeccionController {
  private JdbcTemplate jdbcTemplate;
    
    public SeccionController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("seccion.htm")
    public ModelAndView seccion()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from seccion order by IDSeccion desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("seccion");
        return mav;
    }  
}
