package com.iset.compiler_service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CompilerServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CompilerServiceApplication.class, args);
	}

	@GetMapping(path = {"", "/"})
	public String index(){
		return "Hello World with Spring on Compiler Service";
	}
}
