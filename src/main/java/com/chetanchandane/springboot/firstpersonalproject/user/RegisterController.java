package com.chetanchandane.springboot.firstpersonalproject.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @RequestMapping("/api/v1/register")
    public String registerUserPage(){
        return "registerUser";
    }
}
