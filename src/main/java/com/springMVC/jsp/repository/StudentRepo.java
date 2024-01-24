package com.springMVC.jsp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springMVC.jsp.model.Student;

public interface StudentRepo extends JpaRepository<Student, Long> {

}
