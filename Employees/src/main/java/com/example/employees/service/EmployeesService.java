package com.example.employees.service;

import java.util.List;

import com.example.employees.dto.EmployeesDTO;
import com.example.employees.model.Employees;

public interface EmployeesService {
	
	List<EmployeesDTO> getAllDetails();
	void addEmployee(EmployeesDTO employees);
	void deleteEmployee(long empid);
	EmployeesDTO updateEmployee(long empid);
	List<Employees> search(String query);
}
