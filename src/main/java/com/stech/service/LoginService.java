package com.stech.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	public boolean validateUser(String userid, String password) {
        return userid.equalsIgnoreCase("admin")
                && password.equalsIgnoreCase("12345");
    }

	public boolean userExists(String username, String email) {
		// TODO Auto-generated method stub
		return false;
	}

}
