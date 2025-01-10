package com.chetanchandane.springboot.firstpersonalproject.user;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password){
        boolean isValidUser = username.equalsIgnoreCase("chetanchandane");
        boolean isValidPassword = password.equalsIgnoreCase("password");

        return isValidPassword && isValidUser;
    }
}
