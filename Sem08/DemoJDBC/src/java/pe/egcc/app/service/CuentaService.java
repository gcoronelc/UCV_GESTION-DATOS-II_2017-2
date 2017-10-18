package pe.egcc.app.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

@Service
public class CuentaService extends AbstractDBSupport{
  
  public List<Map<String,Object>> conMovimientos(String cuenta){
    // Preparando el query
    String sql = "select   "
            + "cuencodigo, monenombre, cuensaldo, "
            + "cuenestado,  movinumero, movifecha, "
            + "moviimporte, tipocodigo, tiponombre  "
            + "from v_movimiento "
            + "where cuencodigo = ? "
            + "order by movinumero desc";
    // Ejecutando el query
    List<Map<String,Object>> lista;
    lista = jdbcTemplate.queryForList(sql, cuenta);
    // Retornar resultado
    return lista;
  }
  
  
}
