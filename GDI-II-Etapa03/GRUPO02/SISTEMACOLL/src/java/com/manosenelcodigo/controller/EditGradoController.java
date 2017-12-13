
package com.manosenelcodigo.controller;

import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Grado;
import com.manosenelcodigo.modelos.GradoValidar;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("editgrado.htm")
public class EditGradoController 
{
    GradoValidar gradoValidar;
    private JdbcTemplate jdbcTemplate;
     
    
    public EditGradoController() 
    {
        this.gradoValidar=new GradoValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        int IDGrado=Integer.parseInt(request.getParameter("IDGrado"));
        Grado datos=this.selectGrado(IDGrado);
        mav.setViewName("editgrado");
        mav.addObject("grado",new Grado(IDGrado,datos.getNombre()));
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("grado") Grado u,
                BindingResult result,
                SessionStatus status,
                HttpServletRequest request
        )
    {
        this.gradoValidar.validate(u, result);
        if(result.hasErrors())
        {
             ModelAndView mav=new ModelAndView();
            int IDGrado=Integer.parseInt(request.getParameter("IDGrado"));
            Grado datos=this.selectGrado(IDGrado);
            mav.setViewName("editgrado");
            mav.addObject("grado",new Grado(IDGrado,datos.getNombre()));
            return mav;
        }else
        {
            int IDGrado=Integer.parseInt(request.getParameter("IDGrado"));
        this.jdbcTemplate.update(
                    "update grado "
                + "set Nombre=? "
                + "where "
                + "IDGrado=? ",
         u.getNombre(),IDGrado);
         return new ModelAndView("redirect:/grado.htm");
        }
       
    }
    public Grado selectGrado(int IDGrado) 
    {
        final Grado user = new Grado();
        String quer = "SELECT * FROM grado WHERE IDGrado='" + IDGrado+"'";
        return (Grado) jdbcTemplate.query
        (quer, new ResultSetExtractor<Grado>() 
            {
                public Grado extractData(ResultSet rs) throws SQLException, DataAccessException {
                    if (rs.next()) {
                        user.setNombre(rs.getString("Nombre"));
                    }
                    return user;
                }


            }
        );
    }
}

