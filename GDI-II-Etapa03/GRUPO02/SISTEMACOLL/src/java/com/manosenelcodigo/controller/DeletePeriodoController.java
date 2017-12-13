package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class DeletePeriodoController {

    private JdbcTemplate jdbcTemplate;

    public DeletePeriodoController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deleteperiodo.htm")
    public ModelAndView periodo(HttpServletRequest request) {
        int IDPeriodo = Integer.parseInt(request.getParameter("IDPeriodo"));
        this.jdbcTemplate.update(
                "delete from periodo "
                + "where "
                + "IDPeriodo=? ",
                IDPeriodo);
        return new ModelAndView("redirect:/periodo.htm");
    }
}
