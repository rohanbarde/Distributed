package org.techhub.repository;

import org.techhub.model.LoginModel;

public class ValidateUserRepositoryImpl extends DBParent implements ValidateUserRepository{

	public LoginModel isValidate(LoginModel model) {
		try
		{
			stmt = conn.prepareStatement("select * from login where username=? and password=?");
			stmt.setString(1, model.getUsername());
			stmt.setString(2, model.getPassword());
			rs = stmt.executeQuery();
			if(rs.next())
			{
				model.setLoginType(rs.getString("logintype"));
			}
			return model;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);//loggers log4j- library for writing logger
			return null;
		}
	}
	public static void main(String x[])
	{
		ValidateUserRepositoryImpl vrepoimpl = new ValidateUserRepositoryImpl();
		LoginModel model = new LoginModel();
		model.setUsername("abc");
		model.setPassword("abc");
		model= vrepoimpl.isValidate(model);
		System.out.println(model);
	}
}
