package Com.Beans;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Login {


	private boolean resultat;
    public boolean isResultat() {
		return resultat;
	}

	public void setResultat(boolean resultat) {
		this.resultat = resultat;
	}
	
	public boolean islogin(Utilisateur user)
	{
		ResultSet rs=null;
		resultat=true;
		Connection connection=null;
		//PreparedStatement prepare=null;
		try {
			//connection=cnx.getconnection();
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","khial","khial");
			String req="select login,password from utilisateur where login=? and password=?";
			PreparedStatement prepare=connection.prepareStatement(req);
			prepare.setString(1, user.getLogin());
			prepare.setString(2, user.getPassword());
			rs=prepare.executeQuery();
			System.out.println(rs);
			if (!rs.next()) {
				System.out.println("on est empty");
				this.resultat=false;}
			System.out.println("pas dereruuuuuuuuuuuuuuuur");
		} catch (SQLException e) {
			System.out.println("erreur sqllllllllll");
			e.printStackTrace();
		}
		return resultat;
		
	}

}
