package com.lenka.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    //need a controller method to show initial HTML form
    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }
    //need a controller method to show process HTML form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloWorld";
    }

    //new method to read form data
    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model){
        //read request parameter
        String theName = request.getParameter("studentName");
        //convert the data
        theName = theName.toUpperCase();
        //create message
        String result = "Yo! " + theName;
        //add message to the model
        model.addAttribute("message", result);

        return "helloWorld";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName")
            String theName, Model model){
        //convert the data
        theName = theName.toUpperCase();
        //create message
        String result = "Hey My Friend " + theName;
        //add message to the model
        model.addAttribute("message", result);

        return "helloWorld";
    }
}
