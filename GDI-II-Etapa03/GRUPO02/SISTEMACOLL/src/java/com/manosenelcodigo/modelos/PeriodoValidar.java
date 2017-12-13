package com.manosenelcodigo.modelos;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
public class PeriodoValidar implements Validator{
  private Pattern pattern;
    private Matcher matcher;

    @Override
    public boolean supports(Class<?> type) {
        return Periodo.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Periodo periodo = (Periodo) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "IDPeriodo",
                "required.IDPeriodo", "El campo IDPeriodo es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nom_periodo",
                "required.Nom_periodo", "El campo Nom_periodo es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Matricula",
                "required.Matricula", "El campo Matricula es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Pension",
                "required.Pension", "El campo Pension es Obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Estado",
                "required.Estado", "El campo Estado es Obligatorio.");
    }  
}
