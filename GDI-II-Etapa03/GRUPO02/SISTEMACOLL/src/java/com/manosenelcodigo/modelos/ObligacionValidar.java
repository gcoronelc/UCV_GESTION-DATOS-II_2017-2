package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ObligacionValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Obligacion.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Obligacion obligacion = (Obligacion) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDEstudiante",
                "required.IDEstudiante", "El campo IDEstudiante es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDMatricula",
                "required.IDMatricula", "El campo IDMatricula es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDTObligacion",
                "required.IDTObligacion", "El campo IDTObligacion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Importe",
                "required.Importe", "El campo Importe es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "FechaVen",
                "required.FechaVen", "El campo FechaVen es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudEmpleado",
                "required.AudEmpleado", "El campo AudEmpleado es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudFecha",
                "required.AudFecha", "El campo AudFecha es Obligatorio.");
    }
}
