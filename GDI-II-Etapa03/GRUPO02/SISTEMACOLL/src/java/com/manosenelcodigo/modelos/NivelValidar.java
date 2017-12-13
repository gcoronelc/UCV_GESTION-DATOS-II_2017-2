/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manosenelcodigo.modelos;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class NivelValidar implements Validator {
   
     private Pattern pattern;
     private Matcher matcher; 
     @Override
    public boolean supports(Class<?> type) 
    {
        return Nivel.class.isAssignableFrom(type);
    }
     @Override
    public void validate(Object o, Errors errors) {
        Nivel nivel=(Nivel)o;
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Nombre",
        "required.Nombre", "El campo Nombre es Obligatorio.");

    }
    
}
