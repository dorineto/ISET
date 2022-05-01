package com.iset.be;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HelloController {

    @GetMapping(path = {"", "/"} )
    public String index(){
        return "Hello World with Spring!";
    }

}
