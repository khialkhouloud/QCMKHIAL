package Com.Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReponseDAO {
	private String reponse;
	private ArrayList<String> resultat;
	private String vrairep;
	
	
	public String isVrairep() {
		return vrairep;
	}
	public void setVrairep(String vrairep) {
		this.vrairep = vrairep;
	}
	public ArrayList<String> getResultat() {
		return resultat;
	}
	public void setResultat(ArrayList<String> resultat) {
		this.resultat = resultat;
	}
	
	
	public String getReponse() {
		return reponse;
	}
	public void setReponse(String reponse) {
		this.reponse = reponse;
	}
	
	
	
	public ArrayList<String> getReponse(int idQuestion)
	{
		resultat =new ArrayList<String>();
		Connection connection=null;
		ResultSet rs=null;
		//PreparedStatement prepare=null;
		try {
			//connection=cnx.getconnection();
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
			String req="select reponse from reponse where idquestion=?";
			PreparedStatement prepare=connection.prepareStatement(req);
			prepare.setInt(1, idQuestion);
			
			rs =prepare.executeQuery();
			String rep = "";
			
			while (rs.next())
			{
				rep=rs.getString("reponse");
				resultat.add(rep);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultat;
	
	}
	
	public String getvraireponse(int idQuestion)
	{
		Connection connection=null;
		ResultSet rs=null;
		try {
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
			String req="select reponse from reponse where idquestion=? and resultat=1";
			PreparedStatement prepare=connection.prepareStatement(req);
			prepare.setInt(1, idQuestion);
			rs =prepare.executeQuery();
			while (rs.next())
			{
				vrairep=rs.getString("reponse");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vrairep;
	}
	
	public int getCountReponse(int idQuestion)
	{
		int j=0;
		Connection connection=null;
		ResultSet rs=null;
		try {
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
			String req="select count(*) as nombre from reponse where idquestion=?";
			PreparedStatement prepare=connection.prepareStatement(req);
			prepare.setInt(1, idQuestion);
			
			rs =prepare.executeQuery();
					
			while (rs.next())
			{
				j=Integer.parseInt(rs.getString("nombre"));											
			}
			 
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return j;
	
	}
	
}
