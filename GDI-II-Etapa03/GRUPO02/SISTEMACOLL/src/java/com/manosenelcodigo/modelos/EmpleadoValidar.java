package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EmpleadoValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Empleado.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Empleado empleado = (Empleado) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombre",
                "required.Nombre", "El campo Nombre es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Apellido",
                "required.Apellido", "El campo Apellido es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Dni",
                "required.Dni", "El campo Dni es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Telefono",
                "required.Telefono", "El campo Telefono es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Direcion",
                "required.Direccion", "El campo Direccion es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Email",
                "required.Email", "El campo Email es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "AudEmpleado",
                "required.AudEmpleado", "El campo AudEmpleado es Obligatorio.");

    }
}
