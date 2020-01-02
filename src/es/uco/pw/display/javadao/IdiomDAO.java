package es.uco.pw.display.javadao;

import java.sql.*;

public class IdiomDAO {
	
	public IdiomDAO() {}
	
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
	
	public int saveIdiom(int userID, String Idiom,int levelread, int levelspeak, int levelwrite, int levelEurope) {
		
		int status = 0;
		
		try {
			Connection con=getConnection();
			String consulta = "INSERT INTO `userIdioms` VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setInt(1,userID);
			ps.setString(2,Idiom);
			ps.setInt(3, levelread);
			ps.setInt(4, levelspeak);
			ps.setInt(5, levelwrite);
			ps.setInt(6, levelEurope);
			
			status = ps.executeUpdate();
				
		} catch(Exception e) {System.out.println(e);}
		
		return status;
	}
	
	public boolean checkIDIdiom(int userID) {
		ResultSet status;
		int cont = 0;
		
		try {
			Connection con = getConnection();
			String consulta = "SELECT * from `userIdioms` WHERE userID = ?";
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
		PreparedStatement ps=con.prepareStatement("delete * from `userIdioms` where userID = ?");
		ps.setInt(1,userid);
		status=ps.executeUpdate(); 
		}catch(Exception e){System.out.println(e);}
		return status;
		}
	
}
