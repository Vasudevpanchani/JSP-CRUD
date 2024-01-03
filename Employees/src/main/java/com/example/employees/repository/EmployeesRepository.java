package com.example.employees.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.employees.dto.EmployeesDTO;
import com.example.employees.model.Employees;

@Repository
public interface EmployeesRepository extends JpaRepository<Employees, Long>{
	
	@Query("SELECT e FROM Employees e ORDER BY e.empId ASC")
	List<Employees> findAll();
	
	@Query("SELECT e FROM Employees e WHERE LOWER(CONCAT(e.empName,e.empEmail,e.empPhone)) LIKE LOWER(CONCAT('%', :q, '%'))")
	public List<Employees> findSearch(@Param("q") String query);
	
	

}
