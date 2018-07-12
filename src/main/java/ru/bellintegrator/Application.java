package ru.bellintegrator;

import org.springframework.boot.SpringApplication;

public class Application {
    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(Application.class);
        app.run(args);
    }
}
