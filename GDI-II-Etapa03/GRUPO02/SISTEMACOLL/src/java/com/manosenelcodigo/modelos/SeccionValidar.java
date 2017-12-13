package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class SeccionValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Seccion.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Seccion seccion = (Seccion) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDSeccion",
                "required.IDSeccion", "El campo IDSeccion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDPeriodo",
                "required.IDPeriodo", "El campo IDPeriodo es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDEmpelado",
                "required.IDEmpleado", "El campo IDEmpleado es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nom_seccion",
                "required.Nom_seccion", "El campo Nom_seccion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Vacantes",
                "required.Vacantes", "El campo Vacantes es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Matriculados",
                "required.Matriculados", "El campo Matriculados es Obligatorio.");
    }
}
