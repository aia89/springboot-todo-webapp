package com.chetanchandane.springboot.firstpersonalproject.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHello {

    // http://localhost:8080/say-hello
    @RequestMapping("/say-Hello")
    @ResponseBody
    public String SayHelloMethod(){
        return "Hello! let us learn spring boot!";
    }
}
