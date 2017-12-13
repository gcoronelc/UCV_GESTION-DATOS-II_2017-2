package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class DeleteMatriculaController {
    
    private JdbcTemplate jdbcTemplate;

    public DeleteMatriculaController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deletematricula.htm")
    public ModelAndView matricula(HttpServletRequest request) {
        int IDMatricula = Integer.parseInt(request.getParameter("IDMatricula"));
        this.jdbcTemplate.update(
                "delete from matricula "
                + "where "
                + "IDMatricula=? ",
                IDMatricula);
        return new ModelAndView("redirect:/matricula.htm");
    }
}
