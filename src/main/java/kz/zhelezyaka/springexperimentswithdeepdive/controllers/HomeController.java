package kz.zhelezyaka.springexperimentswithdeepdive.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/v1/home")
    public String home(){
        return "home";
    }
}
