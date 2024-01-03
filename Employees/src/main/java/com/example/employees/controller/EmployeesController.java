package com.example.employees.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.employees.dto.EmployeesDTO;
import com.example.employees.model.Employees;
import com.example.employees.service.EmployeesService;

@Controller
public class EmployeesController {
	
	@Autowired
	private EmployeesService employeesService;
	
	@GetMapping("/")
	public ModelAndView employees() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		/* mv.addObject("no",1); */
		/* mv.addObject("name","vasu"); */
		/* mv.addObject("email","vasu@gmail.com"); */
		/* mv.addObject("phone","6532144789"); */
		mv.addObject("employees",employeesService.getAllDetails());
		return mv;
	}
	
	@PostMapping("/addEmployee")
	public ModelAndView addEmployee(@ModelAttribute("employees") EmployeesDTO employees,BindingResult result) {
		if(result.hasErrors()) {
			return new ModelAndView("redirect:/");
		}
		employeesService.addEmployee(employees);
		return new ModelAndView("redirect:/");
	}
	
	@GetMapping("/deleteEmployee")
	public ModelAndView deleteEmployee(@RequestParam("empId") long empid) {
		employeesService.deleteEmployee(empid);
		return new ModelAndView("redirect:/");
	}
	
	@GetMapping("/updateEmployee")
	public ResponseEntity<EmployeesDTO> updateEmployee(@RequestParam("empId") long empid) {
		return ResponseEntity.ok(employeesService.updateEmployee(empid));
	}
	
	@GetMapping("/search")
	public ModelAndView searchDetails(@RequestParam("query") String query) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		mv.addObject("employees",employeesService.search(query));
		return mv;
	}
}
