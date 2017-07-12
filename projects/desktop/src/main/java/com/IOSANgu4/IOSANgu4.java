package com.IOSANgu4;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;




@ComponentScan({"com.IOSANgu4.*"})
@SpringBootApplication
public class IOSANgu4 extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(IOSANgu4.class);
    }

	public static void main(String[] args) {
		SpringApplication.run(IOSANgu4.class, args);
	}
 }
