package Com.Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QuestionDao {
	
	private String question;
	
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	

	
	
	public String avoirquestion(int i)
	{
		
		
		Connection connection=null;
		ResultSet rs=null;
		//PreparedStatement prepare=null;
		try {
			//connection=cnx.getconnection();
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
			String req="select question  from question where idquestion=?";
			PreparedStatement prepare=connection.prepareStatement(req);
			prepare.setInt(1, i);
			
			rs =prepare.executeQuery();
		
			while (rs.next()) {
				question= rs.getString("question");
				//System.out.println(question);
			}
			 	
		} catch (SQLException e) {
			//System.out.println("erreur sqllllllllll");
			e.printStackTrace();
		}
		return question;
	
	}
	
}
