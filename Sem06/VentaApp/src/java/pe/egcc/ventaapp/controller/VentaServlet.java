package pe.egcc.ventaapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.egcc.ventaapp.model.VentaModel;
import pe.egcc.ventaapp.service.VentaService;

@WebServlet(name = "VentaServlet", 
        urlPatterns = {"/VentaController"})
public class VentaServlet extends HttpServlet {

  @Override
  protected void service(HttpServletRequest request, 
          HttpServletResponse response) 
          throws ServletException, IOException {
  
    // Datos
    double precio = Double.parseDouble(request.getParameter("precio"));
    int cant = Integer.parseInt(request.getParameter("cant"));
    
    // Proceso
    VentaService service = new VentaService();
    VentaModel bean = new VentaModel(precio, cant);
    bean = service.procesarVenta(bean);
    
    // Forward
    request.setAttribute("bean", bean);
    RequestDispatcher rd;
    rd = request.getRequestDispatcher("reporte.jsp");
    rd.forward(request, response);
    
  }

  
}
