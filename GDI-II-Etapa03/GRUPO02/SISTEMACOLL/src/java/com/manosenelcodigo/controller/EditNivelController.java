
package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Nivel;
import com.manosenelcodigo.modelos.NivelValidar;
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
@RequestMapping("editnivel.htm")
public class EditNivelController {
    NivelValidar nivelValidar;
    private JdbcTemplate jdbcTemplate;
     
    
    public EditNivelController() 
    {
        this.nivelValidar=new NivelValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        int IDNivel=Integer.parseInt(request.getParameter("IDNivel"));
        Nivel datos=this.selectNivel(IDNivel);
        mav.setViewName("editnivel");
        mav.addObject("nivel",new Nivel(IDNivel,datos.getNombre()));
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("nivel") Nivel u,
                BindingResult result,
                SessionStatus status,
                HttpServletRequest request
        )
    {
        this.nivelValidar.validate(u, result);
        if(result.hasErrors())
        {
             ModelAndView mav=new ModelAndView();
            int IDNivel=Integer.parseInt(request.getParameter("IDnivel"));
            Nivel datos=this.selectNivel(IDNivel);
            mav.setViewName("editnivel");
            mav.addObject("nivel",new Nivel(IDNivel,datos.getNombre()));
            return mav;
        }else
        {
            int IDNivel=Integer.parseInt(request.getParameter("IDNivel"));
        this.jdbcTemplate.update(
                    "update nivel "
                + "set Nombre=? "
                + "where "
                + "IDNivel=? ",
         u.getNombre(),IDNivel);
         
        }
       return new ModelAndView("redirect:/nivel.htm");
    }
    public Nivel selectNivel(int IDNivel) 
    {
        final Nivel user = new Nivel();
        String quer = "SELECT * FROM nivel WHERE IDNivel='" + IDNivel+"'";
        return (Nivel) jdbcTemplate.query
        (
                quer, new ResultSetExtractor<Nivel>() 
            {
                public Nivel extractData(ResultSet rs) throws SQLException, DataAccessException {
                    if (rs.next()) 
                    {
                        user.setNombre(rs.getString("Nombre"));
                        
                    }
                    return user;
                }


            }
        );
    }
    
}
