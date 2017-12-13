package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class ObligacionController {
   private JdbcTemplate jdbcTemplate;
    
    public ObligacionController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("obligacion.htm")
    public ModelAndView obligacion()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from obligacion order by IDObligacion desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("obligacion");
        return mav;
    } 
}
