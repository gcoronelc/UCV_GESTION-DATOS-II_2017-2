package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
public class MatriculaController {
     private JdbcTemplate jdbcTemplate;
    
    public MatriculaController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("matricula.htm")
    public ModelAndView matricula()
    {
        ModelAndView mav=new ModelAndView();
        String sql="select * from matricula order by IDMatricula desc";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("matricula");
        return mav;
    }
}
