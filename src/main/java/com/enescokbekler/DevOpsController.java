package com.enescokbekler;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;


//  http://localhost:8080/
@RestController
@RequestMapping



public class DevOpsController {
    //  http://localhost:8080/
    @GetMapping
    public String DevOpsHello(){
        return "DevOps Hello:  " + LocalDateTime.now();
    }

    //  http://localhost:8080/info
    @GetMapping("/info")
    public String info(){
        return "devops info:  " + LocalDateTime.now();
    }
}
