package workForAll;

import java.io.Serializable;

public class CustomerBean implements java.io.Serializable
{
	private int userID = 0;
	private String userName = "";
	private String userPassword = "";
	private int userLog = 0;

	public CustomerBean() {}
   
	public int getuserID()
	{ 
		return userID; 
	}
  
	public void setuserID(int id)
	{
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
	
	public int getuserLog()
	{
		return this.userLog;
	}
	
	public void setuserLog(int Log)
	{
		this.userLog = Log;
	}
}
