package dao;

import java.sql.*;
import java.util.Hashtable;

public class userDAO
{
	// Método que establece la conexión con la base de datos
	public static Connection getConnection()
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
	
	// Método para insertar una fila
	public static int save(int id, String username, String password)
	{
		int status = 0;
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into usuario (userID,userName,userPassword) values(?,?,?)");
			
			ps.setInt(1, id);
			ps.setString(2, username);
			ps.setString(3, password);
			status = ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
	}
	
	// Método para actualizar a un usuario
	public static int update(int id, String username, String password)
	{
		int status = 0;
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update usuario set userName=?,userPassword=? where id=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setInt(4, id);
			status = ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
	}
	
	// Para la consulta, se ha tomado una estructura Hash (columna-tabla, valor)
	public static Hashtable<String,String> queryById (int id)
	{
		Statement stmt = null; 
		Hashtable<String,String> resul = null;
		try
		{
			Connection con=getConnection();
			stmt = con.createStatement();
		    ResultSet rs = stmt.executeQuery("select userName, userPassword from usuario where id = " + id);
		    while (rs.next())
		    {
		    	String username = rs.getString("userName");
		    	String password = rs.getString("userPassword");
		        
		    	resul = new Hashtable<String,String>();
		        
		    	resul.put("id", Integer.toString(id));
		        resul.put("userName", username);
		        resul.put("userPassword", password);    
		        System.out.println(id + "\t" + username + "\t" + password);
		    }
		    if (stmt != null) 
		    	stmt.close(); 
		}
		catch (Exception e){System.out.println(e);}
		return resul;
	}

	// Borrar una fila por id
	public static int delete(int id)
	{
		int status = 0;
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from usuario where id=?");
			ps.setInt(1,id);
			status = ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
	}
}