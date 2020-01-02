package es.uco.pw.display.javabean;


import java.io.Serializable;

public class CustomerBean implements Serializable
{
	
	private int userID = 0;
	private String userName = "";
	private String userPassword = "";

	public CustomerBean() {}
   
	public int getuserID() {
		return userID;
	}
	
	public void setuserID(int id) {
		userID = id;
	}
	public String getuserName()
	{
		return userName;
	}
	
	public void setuserName(String name)
	{
		userName = name;
	}
	
	public String getuserPassword()
	{
		return userPassword;
	}
	
	public void setuserPassword(String password)
	{
		userPassword = password;
	}
	
}

