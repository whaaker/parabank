package com.parasoft.parabank.util;

import static org.mockito.ArgumentMatchers.nullable;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import com.parasoft.parabank.domain.Address;
import com.parasoft.parabank.domain.Customer;
import com.parasoft.parabank.domain.logic.AdminManager;

public class FactoryUtil {
	/**
	 * Parasoft Jtest UTA: Helper method to generate and configure mock of AdminManager
	 */
	public static AdminManager mockAdminManager(AdminManager adminManager, String parameterType, 
			String getParameterResult) throws Throwable {
		when(adminManager.getParameter(parameterType)).thenReturn(getParameterResult);
		return adminManager;
	}
	
	public static Customer createCustomer(int id, String firstName, String lastName, 
			String address, String phoneNumber, String ssn, String username, String password) {
		Customer customer = new Customer();
		customer.setAddress(new Address());
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		customer.setId(id);
		customer.setPassword(password);
		customer.setPhoneNumber(phoneNumber);
		customer.setSsn(ssn);
		customer.setUsername(username);
		
		return customer;
	}
}
