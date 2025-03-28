package br.com.terraform.deploy.controller;

import java.time.Instant;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class APIController {

    @GetMapping
    public ResponseEntity<TimeStampResponse> helloAWS() {
        return ResponseEntity.ok(new TimeStampResponse(Instant.now()));
    }
}
