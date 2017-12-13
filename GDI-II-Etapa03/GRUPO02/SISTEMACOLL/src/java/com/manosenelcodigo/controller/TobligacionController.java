
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class TobligacionController {
       private JdbcTemplate jdbcTemplate;
    
    public TobligacionController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("tobligacion.htm")
    public ModelAndView obligacion()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from tobligacion order by IDTObligacion desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("tobligacion");
        return mav;
    } 
}
