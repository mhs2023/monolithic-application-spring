package com.springMVC.jsp.controllers;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class Contoller {

	@GetMapping("/")
	
	public String GetData(Model model) {
		ArrayList<String> array = new ArrayList<>();
		array.add("Hanee");
		array.add("Umme");
		array.add("Sharif");
		model.addAttribute("list", array);
		
		return "index";
	}
	
@GetMapping("/form")
	
	public String viewForm() {
		
		return "addForm";
	}

@GetMapping("/table")

public String viewTable() {
	
	return "table";
}
}
