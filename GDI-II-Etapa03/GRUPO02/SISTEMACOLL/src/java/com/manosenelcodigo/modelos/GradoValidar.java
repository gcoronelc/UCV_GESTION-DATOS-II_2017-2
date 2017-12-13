
package com.manosenelcodigo.modelos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class GradoValidar implements Validator{
   
     private Pattern pattern;
     private Matcher matcher; 
     @Override
    public boolean supports(Class<?> type) 
    {
        return Grado.class.isAssignableFrom(type);
    }
     @Override
    public void validate(Object o, Errors errors) {
        Grado grado=(Grado)o;
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombre",
        "required.Nombre", "El campo Nombre es Obligatorio.");

    }
    
}