package com.example.SharkAquarium.validator;

import com.example.SharkAquarium.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.SharkAquarium.model.user;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator{
    @Autowired
    private UserDAO userDAO;

    @Override
    public boolean supports(Class<?> aClass) {
        return user.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        user user = (user) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (userDAO.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 6 || user.getPassword().length() > 18) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }

        if (!(user.getRole().equals("Investor") || user.getRole().equals("Entrepreneur"))) {
            errors.rejectValue("role", "Diff.userForm.role");
        }
    }
    
}
