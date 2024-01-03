package com.example.employees.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employees_info")
public class Employees {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id")
	private long empId;
	@Column(name = "emp_name")
	private String empName;
	@Column(name = "emp_email")
	private String empEmail;
	@Column(name = "emp_phone")
	private String empPhone;

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpPhone() {
		return empPhone;
	}

	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}

	@Override
	public String toString() {
		return "Employees [empId=" + empId + ", empName=" + empName + ", empEmail=" + empEmail + ", empPhone="
				+ empPhone + "]";
	}

}
