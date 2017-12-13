
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class DeleteTobligacionController {
 private JdbcTemplate jdbcTemplate;

    public DeleteTobligacionController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deletetobligacion.htm")
    public ModelAndView tobligacion(HttpServletRequest request) {
        int IDTObligacion = Integer.parseInt(request.getParameter("IDTObligacion"));
        this.jdbcTemplate.update(
                "delete from tobligacion "
                + "where "
                + "IDTObligacion=? ",
                IDTObligacion);
        return new ModelAndView("redirect:/tobligacion.htm");
    }   
}
