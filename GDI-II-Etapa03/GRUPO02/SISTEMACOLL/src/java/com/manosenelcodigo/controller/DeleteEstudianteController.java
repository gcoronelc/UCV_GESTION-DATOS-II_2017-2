
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
public class DeleteEstudianteController {
    
    private JdbcTemplate jdbcTemplate;

    public DeleteEstudianteController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deleteestudiante.htm")
    public ModelAndView estudiante(HttpServletRequest request) {
        int IDEstudiante = Integer.parseInt(request.getParameter("IDEstudiante"));
        this.jdbcTemplate.update(
                "delete from estudiante "
                + "where "
                + "IDEstudiante=? ",
                IDEstudiante);
        return new ModelAndView("redirect:/estudiante.htm");
    }
}
