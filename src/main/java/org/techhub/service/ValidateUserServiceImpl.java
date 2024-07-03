package org.techhub.service;

import org.techhub.model.LoginModel;
import org.techhub.repository.*;
import org.techhub.repository.ValidateUserRepositoryImpl;


public class ValidateUserServiceImpl implements ValidateUserService{
	 ValidateUserRepository validRepo = new ValidateUserRepositoryImpl();

	public LoginModel isValidateUser(LoginModel model)
	{
		return validRepo.isValidate(model);
	}
}
