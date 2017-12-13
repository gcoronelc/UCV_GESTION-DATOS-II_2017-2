package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class DeleteGradoController {

    private JdbcTemplate jdbcTemplate;

    public DeleteGradoController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deletegrado.htm")
    public ModelAndView grado(HttpServletRequest request) {
        int IDGrado = Integer.parseInt(request.getParameter("IDGrado"));
        this.jdbcTemplate.update(
                "delete from grado "
                + "where "
                + "IDGrado=? ",
                IDGrado);
        return new ModelAndView("redirect:/grado.htm");
    }
}
