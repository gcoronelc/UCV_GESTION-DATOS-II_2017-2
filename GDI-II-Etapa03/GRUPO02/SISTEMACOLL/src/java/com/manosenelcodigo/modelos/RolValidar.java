package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class RolValidar implements Validator {

    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Periodo.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Rol rol = (Rol) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombre",
                "required.Nombre", "El campo Nombre es Obligatorio.");
      
    }
}
