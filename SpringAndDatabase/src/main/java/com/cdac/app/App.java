package com.cdac.app;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cdac.component.CarPart;
import com.cdac.component.CarPartsInventory;

public class App {

	public static void main(String[] args) {
		//Loading Spring/IOC Container
		ApplicationContext ctx = new ClassPathXmlApplicationContext("my-spring-config.xml");
		
		CarPartsInventory inv = (CarPartsInventory) ctx.getBean("carParts2");   // here object of CarPartsInventoryImpl1 is a created(by using spring) with the help of interface CarPartsInventory because we cannot make the object directly,so we create the object by using an interface........... 
		
		
		                                                                       // In this scenario there are 2 different interfaces i.e are carpartsinventoryimpl1
		                                                                       // and carpartsinventoryimpl..
		//model/entity classes are not instantiated using Spring               // when carpartsinventoryimpl1 is there at this time ("carParts1") is used it will require more time.. 
		CarPart cp = new CarPart();                                            // when carpartsinventoryimpl2 is there at this time ("carParts2") is used it will require less time.
		cp.setPartName("Bumper");
		cp.setCarModel("Mahindra");
		cp.setPrice(1350);
		cp.setQuantity(35);
		
		long ms1 = System.currentTimeMillis();
		inv.addNewPart(cp);
		long ms2 = System.currentTimeMillis();
		System.out.println("Total time taken : " + (ms2 - ms1) + " ms approx");  //showing the execution time............
	}

}

