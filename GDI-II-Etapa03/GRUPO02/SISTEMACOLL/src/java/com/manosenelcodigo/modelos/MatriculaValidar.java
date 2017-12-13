package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class MatriculaValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Matricula.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Matricula matricula = (Matricula) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDSeccion",
                "required.IDSeccion", "El campo IDSeccion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDEstudiante",
                "required.IDEstudiante", "El campo IDEstudiante es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Fecha",
                "required.Fecha", "El campo Fecha es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Confirmada",
                "required.Confirmada", "El campo Confirmada es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Activa",
                "required.Activa", "El campo Activa es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "OBS",
                "required.OBS", "El campo OBS es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudEmpleado",
                "required.AudEmpleado", "El campo AudEmpleado es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudFecha",
                "required.AudFecha", "El campo AudFecha es Obligatorio.");

    }
}
