package com.manosenelcodigo.controller;
import com.manosenelcodigo.modelos.Conectar;
import com.manosenelcodigo.modelos.Rol;
import com.manosenelcodigo.modelos.RolValidar;
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
@RequestMapping("editrol.htm")
public class EditRolController {
     RolValidar rolValidar;
    private JdbcTemplate jdbcTemplate;
     
    
    public EditRolController() 
    {
        this.rolValidar=new RolValidar();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        int IDRol=Integer.parseInt(request.getParameter("IDRol"));
        Rol datos=this.selectRol(IDRol);
        mav.setViewName("editrol");
        mav.addObject("rol",new Rol(IDRol,datos.getNombre()));
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("rol") Rol u,
                BindingResult result,
                SessionStatus status,
                HttpServletRequest request
        )
    {
        this.rolValidar.validate(u, result);
        if(result.hasErrors())
        {
             ModelAndView mav=new ModelAndView();
            int IDRol=Integer.parseInt(request.getParameter("IDRol"));
            Rol datos=this.selectRol(IDRol);
            mav.setViewName("editrol");
            mav.addObject("rol",new Rol(IDRol,datos.getNombre()));
            return mav;
        }else
        {
            int IDRol=Integer.parseInt(request.getParameter("IDRol"));
        this.jdbcTemplate.update(
                    "update rol "
                + "set Nombre=? "
                + "where "
                + "IDRol=? ",
         u.getNombre(),IDRol);
         
        }
       return new ModelAndView("redirect:/rol.htm");
    }
    public Rol selectRol(int IDRol) 
    {
        final Rol user = new Rol();
        String quer = "SELECT * FROM rol WHERE IDRol='" + IDRol+"'";
        return (Rol) jdbcTemplate.query
        (
                quer, new ResultSetExtractor<Rol>() 
            {
                public Rol extractData(ResultSet rs) throws SQLException, DataAccessException {
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
