package org.techhub.model;

public class LoginModel {
	private String username;
	private String password;
	private String LoginType;
	
	public String getLoginType() {
		return LoginType;
	}
	public void setLoginType(String loginType) {
		LoginType = loginType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String toString()
	{
		return "["+username+","+password+","+LoginType+"]";
	}
	
	public int hashCode()
	{
		return username.length()*1000;
	}
	
	public boolean equals(Object obj)
	{
		LoginModel m = (LoginModel)obj;
		if(m.username.equals(this.username) && m.password.equals(this.password) && m.LoginType.equals(this.LoginType))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
