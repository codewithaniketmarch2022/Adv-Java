package com.cdac.app;

import java.time.LocalDate;

import java.util.List;

import com.cdac.dao.EmployeeDao;
import com.cdac.entity.Employee;

public class InsertEmployee {

	public static void main(String[] args) {
		/*Employee emp = new Employee();
		 
		// Insert operation------------------------------- 
		 
		emp.setEmpno(1003);
		emp.setName("Nisha");
		emp.setSalary(10000);
		emp.setDateOfJoining(LocalDate.of(2022, 10, 10));

		EmployeeDao dao = new EmployeeDao();
		dao.add(emp);*/
		
		//  Select Operation(fetch data from database)----------------------
		
		/*EmployeeDao dao = new EmployeeDao();
		Employee emp = dao.fetch(1002);
		System.out.println(emp.getName() + " " + emp.getSalary());*/
		
		//---------------------------------------------------
		
		/*EmployeeDao dao = new EmployeeDao();
		List<Employee> list = dao.fetchAll();
		for(Employee emp : list)
		System.out.println(emp.getEmpno() + " " + emp.getName() + " " + emp.getSalary() + " " + emp.getDateOfJoining());*/
		
		//---------------------------------------------------

		/*EmployeeDao dao = new EmployeeDao();
		System.out.println(".............");
		List<Employee> list2 = dao.fetchAllBySalary(5000);
		for(Employee emp : list2)
		System.out.println(emp.getEmpno() + " " + emp.getName() + " " + emp.getSalary() + " " + emp.getDateOfJoining());*/
		
		//---------------------------------------------------
		
		
		/*EmployeeDao dao = new EmployeeDao();
		System.out.println("..............");
		List<String> names = dao.fetchAllNames();
		for(String name : names)
		System.out.println(name);*/
		
		//---------------------------------------------------
		
		/*EmployeeDao dao = new EmployeeDao();
		System.out.println("..............");
		List<Object[]> namesAndSalaries = dao.fetchAllNamesAndSalaries();
		for(Object[] arr : namesAndSalaries)
		System.out.println(arr[0] + " " + arr[1]);*/
		
}
	
	
}