package Com.ConnexionBDD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connexionbdd {

	private String url;
	private String login;
	private String pass;
	connexionbdd(String url,String login,String pass)
	{
		this.url=url;
		this.login=login;
		this.pass=pass;	
	}
	public static connexionbdd getinstance()
	{
		
	   try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	   connexionbdd instance=new connexionbdd("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
	return instance;
	}
	
	public Connection getconnection( ) throws SQLException
	{
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
		
	}
	
	

}
