package Com.Beans;

import java.util.List;

public class Question {
	private int idquestion;
	private String question;
	private List<Reponse> reponses; 
	private boolean resultat ;
	public int getIdquestion() {
		return idquestion;
	}
	public void setIdquestion(int idquestion) {
		this.idquestion = idquestion;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public List<Reponse> getReponses() {
		return reponses;
	}
	public void setReponses(List<Reponse> reponses) {
		this.reponses = reponses;
	}
	public boolean isResultat() {
		return resultat;
	}
	public void setResultat(boolean resultat) {
		this.resultat = resultat;
	}
	

}
