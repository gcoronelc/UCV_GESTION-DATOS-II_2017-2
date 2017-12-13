
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class DeleteNivelController {
    private JdbcTemplate jdbcTemplate;
   public DeleteNivelController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    
    @RequestMapping("deletenivel.htm")
    public ModelAndView nivel(HttpServletRequest request) 
    {
        int IDNivel=Integer.parseInt(request.getParameter("IDnivel"));
        this.jdbcTemplate.update(
                    "delete from nivel "
                + "where "
                + "IDNivel=? ",
        IDNivel);
        return new ModelAndView("redirect:/nivel.htm");
    }
}
