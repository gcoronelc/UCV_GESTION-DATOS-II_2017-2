package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class PeriodoController {
    private JdbcTemplate jdbcTemplate;
    
    public PeriodoController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("periodo.htm")
    public ModelAndView periodo()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from periodo order by IDPeriodo desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("periodo");
        return mav;
    }
}
