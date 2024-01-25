package com.springMVC.jsp.service;

import com.springMVC.jsp.model.Student;
import com.springMVC.jsp.repository.StudentRepo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

@org.springframework.stereotype.Service
public class Service {

	@Autowired
	public StudentRepo repo;

	public List<Student> getData() {

		return repo.findAll();
	}

//       public Student getDataByID(Long id) {
//		
//		Optional<Student> optionalStud = repo.findById(id);
//		if(optionalStud.isPresent()) {
//			return optionalStud.get();
//		}
//		return new Student();
//		
//		
//
//	}

	public Student getDataByID(Long id) {

		return repo.findById(id).get();
	}

	public Student getDataByNameD(String name) {

		return repo.findByName(name).get();
	}

	public Student save(Student stu) {

		return repo.save(stu);
	}

	public Boolean deleteDataByID(Long id) {
		Optional<Student> stu = repo.findById(id);
		if (stu.isPresent()) {
			repo.deleteById(id);
			return true;
		} else {
			return false;
		}

	}

}
