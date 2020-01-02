package es.uco.pw.display.javadao;

import java.sql.*;


public class UserDAO
{
	public UserDAO(){}
	
	// Método que establece la conexión con la base de datos
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
	
	public int numberofuser() {
		Statement stmt = null;
		int cont = 0;
		try {
			
			Connection con=getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from `usuario`");
			
			while(rs.next()) {
				cont++;
			}
			cont++;
			if (stmt != null) stmt.close(); 
		}catch(Exception e){System.out.println(e);}
		
		return cont;
	}
	
	public int queryuserID(String usuario) {
		int ret = 0;
		
		ResultSet status;
		
		try {
			
			Connection con=getConnection();
			String consulta = "SELECT userID FROM `usuario` WHERE userName = ?";
			
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setString(1, usuario);
			
			status = ps.executeQuery();
			while(status.next()) {
				ret = status.getInt("userID");
			}
		}catch(Exception e) {System.out.println(e);}
		return ret;
	}
	
	//Consultas login - boolean checkPasswdByUsername
	public boolean checkPasswdByUsername(String usuario, String password) {
		ResultSet status;
		int cont = 0;
		try {
			Connection con=getConnection();
			String consulta = "SELECT userName, userPassword FROM `usuario` WHERE userName = ? and userPassword = ?";
			
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setString(1, usuario);
			ps.setString(2,  password);
			
			//Hay que ponerlo bien qe hay que igualar ResultSet
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
	
	public boolean checkuserName(String username) {
		
		ResultSet status;
		int cont = 0;
		
		try {
			Connection con = getConnection();
			String consulta = "SELECT * from `usuario` WHERE userName = ?";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setString(1, username);
			
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
	
	public int save(int id, String nameR, String surname, String name, String password, int gender) {
		int status = 0;
		
		try {
			Connection con=getConnection();
			String consulta = "INSERT INTO `usuario` VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(consulta);
			
			ps.setInt(1,id);
			ps.setString(2,name);
			ps.setString(3, password);
			ps.setString(4, nameR);
			ps.setString(5, surname);
			ps.setInt(6, gender);
			
			status = ps.executeUpdate();
				
		} catch(Exception e) {System.out.println(e);}
		
		return status;
	}
}
