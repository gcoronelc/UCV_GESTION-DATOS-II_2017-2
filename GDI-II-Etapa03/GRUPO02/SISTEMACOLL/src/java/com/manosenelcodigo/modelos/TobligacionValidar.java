
package com.manosenelcodigo.modelos;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class TobligacionValidar implements Validator{
    private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Tobligacion.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Tobligacion tobligacion = (Tobligacion) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombre",
                "required.Nombre", "El campo Nombre es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Mora",
                "required.Mora", "El campo Mora es Obligatorio.");
    }
}
