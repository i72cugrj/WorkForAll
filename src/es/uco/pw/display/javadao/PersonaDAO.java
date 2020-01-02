package es.uco.pw.display.javadao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO {
	
	public PersonaDAO() {}
	
	public Connection getConnection()
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://oraclepr.uco.es:3306/i72cugrj","i72cugrj","workForAll");
		}
		catch(Exception e){System.out.println(e);}
		return con;
	}
	
public int savePersona(int userID, String name,String surname, int day, int month, int year, String country, String local, int movil, String email) {
		
		int status = 0;
		String fecha = "" + day + "\\" + month + "\\" + year;
		
		try {
			Connection con=getConnection();
			String consulta = "INSERT INTO `userPersonalInfo` VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setString(1, name);
			ps.setString(2, surname);
			ps.setString(3, fecha);
			ps.setString(4, country);
			ps.setString(5, local);
			ps.setInt(6,movil);
			ps.setString(7, email);
			ps.setInt(8,userID);
			
			status = ps.executeUpdate();
				
		} catch(Exception e) {System.out.println(e);}
		
		return status;
	}
	
	public boolean checkIDPersona(int userID) {
		ResultSet status;
		int cont = 0;
		
		try {
			Connection con = getConnection();
			String consulta = "SELECT * from `userPersonalInfo` WHERE userID = ?";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setInt(1, userID);
			
			status = ps.executeQuery();
			
			while(status.next()) {
				cont++;
			}
			
			if(cont == 0) {
				return false;
			}
			
			return true;
			
		}catch(Exception e) {System.out.println(e);}
		
		return false;
	}
	
	public int delete(int userid){
		int status=0;
		try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete * from `userPersonalInfo` where userID = ?");
		ps.setInt(1,userid);
		status=ps.executeUpdate(); 
		}catch(Exception e){System.out.println(e);}
		return status;
		}
	
}



