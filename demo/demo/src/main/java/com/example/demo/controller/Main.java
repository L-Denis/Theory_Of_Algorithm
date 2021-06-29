package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.*;
import java.util.stream.IntStream;

@Controller
public class Main {
    private List<Double> results;

    @GetMapping("/")
    public String generate(Model model) {
        Random random = new Random();
        List<Double> res = new ArrayList<>();
        IntStream.range(0, 72).forEach(i -> {
            float nextFloat = random.nextFloat();
            res.add(function(nextFloat));
        });
        results = res;
        model.addAttribute("results", results);
        return "main";
    }

    public double function(float x) {
        return  8/(8*x + 5);
    }

    @GetMapping("/sort/desc")
    public String sortDesc(Model model) {
        Collections.sort(results, Collections.reverseOrder());
        model.addAttribute("results", results);
        return "main";
    }

    @GetMapping("/sort/asc")
    public String sortAsc(Model model) {
        Collections.sort(results);
        model.addAttribute("results", results);
        return "main";
    }
}
