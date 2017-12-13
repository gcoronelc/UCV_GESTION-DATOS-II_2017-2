
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class NivelController {
    private JdbcTemplate jdbcTemplate;
    
    public NivelController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("nivel.htm")
    public ModelAndView nivel()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from nivel order by IDNivel desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("nivel");
        return mav;
    }
}
