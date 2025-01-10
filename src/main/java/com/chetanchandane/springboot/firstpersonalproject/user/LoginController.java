package com.chetanchandane.springboot.firstpersonalproject.user;

import ch.qos.logback.core.net.SyslogOutputStream;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.logging.Logger;

@Controller
public class LoginController {



    @RequestMapping(value="login", method = RequestMethod.GET)
    public String gotoLoginPage(){
        return "loginUser";
    }

    @RequestMapping(value="login", method = RequestMethod.POST)
    public String gotoWelcomePage(@RequestParam String username, @RequestParam String password, ModelMap model){
        model.put("username", username);
        return "welcome";
    }
//    @RequestMapping("login")
//    public String gotoLoginPage2(@RequestParam String name, ModelMap model){
//        model.put("name", name);
//        return "loginUser";
//
//    }
}
