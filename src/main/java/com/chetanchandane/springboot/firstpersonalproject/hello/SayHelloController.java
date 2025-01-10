package com.chetanchandane.springboot.firstpersonalproject.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

    // http://localhost:8080/say-hello
    @RequestMapping("/say-hello")
    @ResponseBody
    public String SayHelloMethod(){
        return "Hello! let us learn spring boot!";
    }

    @RequestMapping("/say-hello-html")
    @ResponseBody
    public String SayHelloHTMLMethod(){
        StringBuffer html = new StringBuffer();
        html.append("<!DOCTYPE html>")
                .append("<html lang=\"en\">")
                .append("<head>")
                .append("<meta charset=\"UTF-8\">")
                .append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">")
                .append("<title>Centered Hello</title>")
                .append("<style>")
                .append("body {")
                .append("margin: 0;")
                .append("height: 100vh;")
                .append("display: flex;")
                .append("align-items: center;")
                .append("justify-content: center;")
                .append("font-family: Arial, sans-serif;")
                .append("font-size: 2rem;")
                .append("background-color: #f0f0f0;")
                .append("}")
                .append("</style>")
                .append("</head>")
                .append("<body>")
                .append("<div>Hello!</div>")
                .append("</body>")
                .append("</html>");


        return html.toString();
        //complex tedious task
        // we make use of JSP, we just redirect to hello.jsp when requested /say-hello-html


    }
    @RequestMapping("/say-hello-jsp")
    public String SayHelloJSPMethod(){
        return "sayHello";
    }
}
