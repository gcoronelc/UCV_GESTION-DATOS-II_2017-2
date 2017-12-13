
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
public class DeleteEmpleadoController {
    
    private JdbcTemplate jdbcTemplate;

    public DeleteEmpleadoController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping("deleteempleado.htm")
    public ModelAndView empleado(HttpServletRequest request) {
        int IDEmpleado = Integer.parseInt(request.getParameter("IDEmpleado"));
        this.jdbcTemplate.update(
                "delete from empleado "
                + "where "
                + "IDEmpleado=? ",
                IDEmpleado);
        return new ModelAndView("redirect:/empleado.htm");
    }
}
