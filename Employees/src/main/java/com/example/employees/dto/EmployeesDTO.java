package com.example.employees.dto;

public class EmployeesDTO {

	private long empId;
	private String empName;
	private String empEmail;
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
		return "EmployeesDTO [empId=" + empId + ", empName=" + empName + ", empEmail=" + empEmail + ", empPhone="
				+ empPhone + "]";
	}

}
