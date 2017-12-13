package com.manosenelcodigo.modelos;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class PagoValidar implements Validator{

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Pago.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Pago pago = (Pago) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDOligacion",
                "required.IDObligacion", "El campo IDObligatorio es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "FechaPago",
                "required.FechaPago", "El campo FechaPago es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Importe",
                "required.Importe", "El campo Importe es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Mora",
                "required.Mora", "El campo Mora es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Total",
                "required.Total", "El campo Total es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudEmpleado",
                "required.AudEmpleado", "El campo AudEmpleado es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudFecha",
                "required.AudFecha", "El campo AudFecha es Obligatorio.");
    }
}
