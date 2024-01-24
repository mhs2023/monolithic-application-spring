package com.springMVC.jsp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Student {
@Id
	private Long id;
	private String name;
	private String address;
}
