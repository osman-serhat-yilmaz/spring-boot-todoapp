package com.in28minutes.springboot.web.controller;

import com.in28minutes.springboot.web.domain.User;
import com.in28minutes.springboot.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;


@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid @RequestParam String name, @Valid @RequestParam String password, RedirectAttributes redirectAttributes) {
        User user = new User();
        user.setName(name);
        user.setPassword(password);
        userService.save(user);

        redirectAttributes.addAttribute("user", user);
        return "login";
    }


    @RequestMapping(value="/create-form", method = RequestMethod.GET)
    public String createForm (ModelMap model){
        return "register";
    }

}
