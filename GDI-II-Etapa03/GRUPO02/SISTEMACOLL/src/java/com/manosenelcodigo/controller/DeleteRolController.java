
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
public class DeleteRolController {
 private JdbcTemplate jdbcTemplate;

    public DeleteRolController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deleterol.htm")
    public ModelAndView rol(HttpServletRequest request) {
        int IDRol = Integer.parseInt(request.getParameter("IDRol"));
        this.jdbcTemplate.update(
                "delete from rol "
                + "where "
                + "IDRol=? ",
                IDRol);
        return new ModelAndView("redirect:/rol.htm");
    }   
}
