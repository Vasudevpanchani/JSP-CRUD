package com.example.employees.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.employees.dto.EmployeesDTO;
import com.example.employees.model.Employees;
import com.example.employees.repository.EmployeesRepository;

@Service
public class EmployeesServiceImpl implements EmployeesService{
	
	@Autowired
	private EmployeesRepository employeesRepository;

	@Override
	public List<EmployeesDTO> getAllDetails() {
		List<EmployeesDTO> employeesDTOs=new ArrayList<>();
		List<Employees> employees=employeesRepository.findAll();
		for(Employees e:employees) {
			EmployeesDTO employeesDTO=new EmployeesDTO();
			employeesDTO.setEmpId(e.getEmpId());
			employeesDTO.setEmpName(e.getEmpName());
			employeesDTO.setEmpEmail(e.getEmpEmail());
			employeesDTO.setEmpPhone(e.getEmpPhone());
			employeesDTOs.add(employeesDTO);
		}
		return employeesDTOs;
		
	}

	@Override
	public void addEmployee(EmployeesDTO employees) {
		if(employees.getEmpId()==0) {
			Employees employees2=new Employees();
			employees2.setEmpId(employees.getEmpId());
			employees2.setEmpName(employees.getEmpName());
			employees2.setEmpEmail(employees.getEmpEmail());
			employees2.setEmpPhone(employees.getEmpPhone());
			employeesRepository.save(employees2);
		}else {
			Employees editEmployees=employeesRepository.findById(employees.getEmpId()).get();
			editEmployees.setEmpId(employees.getEmpId());
			editEmployees.setEmpName(employees.getEmpName());
			editEmployees.setEmpEmail(employees.getEmpEmail());
			editEmployees.setEmpPhone(employees.getEmpPhone());
			employeesRepository.save(editEmployees);
		}
	}

	@Override
	public void deleteEmployee(long empid) {
		employeesRepository.deleteById(empid);
	}

	@Override
	public EmployeesDTO updateEmployee(long empid) {
		Employees e=employeesRepository.findById(empid).get();
		EmployeesDTO employeesDTO=new EmployeesDTO();
		employeesDTO.setEmpName(e.getEmpName());
		employeesDTO.setEmpEmail(e.getEmpEmail());
		employeesDTO.setEmpPhone(e.getEmpPhone());
		return employeesDTO;
	}

	@Override
	public List<Employees> search(String query) {
		return employeesRepository.findSearch(query);
	}




}
