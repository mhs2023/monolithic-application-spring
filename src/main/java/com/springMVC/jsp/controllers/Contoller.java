package com.springMVC.jsp.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springMVC.jsp.model.Student;
import com.springMVC.jsp.service.Service;

@Controller
public class Contoller {
	@Autowired
	public Service studentService;

	@GetMapping("/")

	public String GetData(Model model) {
		List<Student> StudentList = new ArrayList<>();
	
		StudentList = studentService.getData();
		model.addAttribute("list", StudentList);
		return "index";
	}

	@GetMapping("/form")

	public String viewForm(Model model) {
     model.addAttribute("command", new Student());
		return "addForm";
	}
	
	@PostMapping("/save-student")
	public String saveStaff(@ModelAttribute Student student) {
		studentService.save(student);
		return "redirect:/";
	}
	

	@GetMapping("/table")

	public String viewTable() {

		return "table";
	}
	
	@GetMapping("/student-delete/{id}")
	public String deleteStudent(@PathVariable("id") Long id) {
		studentService.deleteDataByID(id);
		return "redirect:/";
	}
	
	@GetMapping("/student-update/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Student student = studentService.getDataByID(id);
		model.addAttribute("command", student);
		return "addForm";
	
	}
}
