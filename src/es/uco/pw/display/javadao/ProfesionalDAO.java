package es.uco.pw.display.javadao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfesionalDAO {
	
	public ProfesionalDAO() {}
	
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
	
	public int saveProfesional(int userID, String type, String organization, int day, int month, int year, int day2, int month2, int year2) {
		
		int status = 0;
		String inicio = "" + day + "\\" + month + "\\" + year;
		String fin = "" + day2 + "\\" + month2 + "\\" + year2;
		
		try {
			Connection con=getConnection();
			String consulta = "INSERT INTO `userLaboral` VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setInt(1,userID);
			ps.setString(2,type);
			ps.setString(3, organization);
			ps.setString(4,inicio);
			ps.setString(5, fin);
			
			status = ps.executeUpdate();
				
		} catch(Exception e) {System.out.println(e);}
		
		return status;
	}
	
	public boolean checkIDProfesional(int userID) {
		ResultSet status;
		int cont = 0;
		
		try {
			Connection con = getConnection();
			String consulta = "SELECT * from `userLaboral` WHERE userID = ?";
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
		String consulta = "DELETE FROM userPersonalInfo WHERE userID =?";
		PreparedStatement ps=con.prepareStatement(consulta);
		ps.setInt(1,userid);
		status=ps.executeUpdate(); 
		}catch(Exception e){System.out.println(e);}
		return status;
		}
	
}

