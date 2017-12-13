package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EstudianteValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Estudiante.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Estudiante estudiante = (Estudiante) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombres",
                "required.Nombres", "El campo Nombres es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Apellido_pate",
                "required.Apellido_pate", "El campo Apellido_pate es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Apellido_mate",
                "required.Apellido_mate", "El campo Apellido_mate es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Fecha_Nacimiento",
                "required.Fecha_Nacimiento", "El campo Fecha_Nacimiento es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Dni",
                "required.Dni", "El campo Dni es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Direcion",
                "required.Direccion", "El campo Direccion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Telefono",
                "required.Telefono", "El campo Telefono es Obligatorio.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Email",
                "required.Email", "El campo Email es Obligatorio.");
    }

}
