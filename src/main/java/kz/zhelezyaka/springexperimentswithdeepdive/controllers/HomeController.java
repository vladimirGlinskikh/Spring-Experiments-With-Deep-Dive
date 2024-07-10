package kz.zhelezyaka.springexperimentswithdeepdive.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/v1/home")
    public String home(){
        return "home";
    }
}
