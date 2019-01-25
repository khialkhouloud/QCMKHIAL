package Com.Servelets;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Beans.QuestionDao;
import Com.Beans.ReponseDAO;
import Com.ConnexionBDD.connexionbdd;

/**
 * Servlet implementation class PageServelet
 */
@WebServlet("/PageServelet")
public class PageServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageServelet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException
    {
    	connexionbdd cnx=connexionbdd.getinstance();	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("getpage");
		QuestionDao question11=new QuestionDao();
		Random r = new Random(); 
		int i = 1 + r.nextInt(11 - 1);
		request.setAttribute("i1", i);
		String question1=question11.avoirquestion(i);
		request.setAttribute("question1", question1);
		ReponseDAO reponseDAO1 = new ReponseDAO();
		ArrayList<String> reponses1 = reponseDAO1.getReponse(i);
		request.setAttribute("reponse1", reponses1);
		String vraireponse=reponseDAO1.getvraireponse(i);
		String[] tabrep=request.getParameterValues("q1");
		System.out.println("loginpage");
		if (tabrep!=null) {System.out.println(tabrep[0]);}
		
		
		QuestionDao question22=new QuestionDao();
		Random r2 = new Random(); 
		int i2 = 1 + r2.nextInt(11 - 1);
      	while (i==i2) {i2 = 1 + r2.nextInt(11 - 1);}
      	request.setAttribute("i2", i2);
		String question2=question22.avoirquestion(i2);
		request.setAttribute("question2", question2);
		ReponseDAO reponseDAO2 = new ReponseDAO();
		ArrayList<String> reponses2 = reponseDAO2.getReponse(i2);
		request.setAttribute("reponse2", reponses2);
		
		QuestionDao question33=new QuestionDao();
		Random r3 = new Random(); 
		int i3 = 1 + r3.nextInt(11 - 1);
		while ((i3==i2) || (i3==i)) {i3 = 1 + r3.nextInt(11 - 1);}
		request.setAttribute("i3", i3);
		String question3=question33.avoirquestion(i3);
		request.setAttribute("question3", question3);
		ReponseDAO reponseDAO3 = new ReponseDAO();
		ArrayList<String> reponses3 = reponseDAO3.getReponse(i3);
		request.setAttribute("reponse3", reponses3);
		
		QuestionDao question44=new QuestionDao();
		Random r4 = new Random(); 
		int i4 = 1 + r4.nextInt(11 - 1);
		while ((i4==i) || (i4==i2) || (i4==i3)) {i4 = 1 + r4.nextInt(11 - 1);}
		request.setAttribute("i4", i4);
		String question4=question44.avoirquestion(i4);
		request.setAttribute("question4", question4);
		ReponseDAO reponseDAO4 = new ReponseDAO();
		ArrayList<String> reponses4 = reponseDAO4.getReponse(i4);
		request.setAttribute("reponse4", reponses4);
		
		QuestionDao question55=new QuestionDao();
		Random r5 = new Random(); 
		int i5 = 1 + r5.nextInt(11 - 1);
		while ((i4==i5) || (i5==i2) || (i5==i3) || (i5==i)) {i5 = 1 + r5.nextInt(11 - 1);}
		request.setAttribute("i5", i5);
		String question5=question55.avoirquestion(i5);
		request.setAttribute("question5", question5);
		ReponseDAO reponseDAO5 = new ReponseDAO();
		ArrayList<String> reponses5 = reponseDAO5.getReponse(i5);
		request.setAttribute("reponse5", reponses5);
		
		QuestionDao question66=new QuestionDao();
		Random r6 = new Random(); 
		int i6 = 1 + r6.nextInt(11 - 1);
		while ((i6==i5) || (i6==i2) || (i6==i3) || (i6==i) || (i6==i4)) {i6 = 1 + r6.nextInt(11 - 1);}
		request.setAttribute("i6", i6);
		String question6=question66.avoirquestion(i6);
		request.setAttribute("question6", question6);
		ReponseDAO reponseDAO6 = new ReponseDAO();
		ArrayList<String> reponses6 = reponseDAO6.getReponse(i6);
		request.setAttribute("reponse6", reponses6);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/PAGE.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ReponseDAO reponseDAO1 = new ReponseDAO();
		String vraireponse=reponseDAO1.getvraireponse(Integer.parseInt(request.getParameterValues("i1")[0]));
		String[] tabrep=request.getParameterValues("q1");
		QuestionDao question11=new QuestionDao();
		String question1=question11.avoirquestion(Integer.parseInt(request.getParameterValues("i1")[0]));
		request.setAttribute("question1", question1);
		ArrayList<String> reponses1 = reponseDAO1.getReponse(Integer.parseInt(request.getParameterValues("i1")[0]));
		request.setAttribute("reponse1", reponses1);
		String repo1="Mauvaise réponse";
		request.setAttribute("vrairepo1", vraireponse);
		if (tabrep!=null) {
			int j;
			int k = 0;
			
			System.out.println("reponsetab1"+tabrep[0]);
			System.out.println("vrairep1"+vraireponse);
			for (j=0 ; j<tabrep.length ; j++)
			{
				if(tabrep[j].equals(vraireponse)) {
					k++;
					if(k==1) {repo1="Bonne réponse"; }
					else {repo1="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep.length>1) {repo1="Mauvaise réponse";}
		}
		request.setAttribute("repo1", repo1);
		
		
		ReponseDAO reponseDAO2 = new ReponseDAO();
		String vraireponse2=reponseDAO2.getvraireponse(Integer.parseInt(request.getParameterValues("i2")[0]));
		String[] tabrep2=request.getParameterValues("q2");
		QuestionDao question22=new QuestionDao();
		String question2=question22.avoirquestion(Integer.parseInt(request.getParameterValues("i2")[0]));
		request.setAttribute("question2", question2);
		ArrayList<String> reponses2 = reponseDAO2.getReponse(Integer.parseInt(request.getParameterValues("i2")[0]));
		request.setAttribute("reponse2", reponses2);
		String repo2="Mauvaise réponse";
		request.setAttribute("vrairepo2", vraireponse2);
		if (tabrep2!=null) {
			int j;
			int k = 0;
			for (j=0 ; j<tabrep2.length ; j++)
			{
				if(tabrep2[j].equals(vraireponse2)) {
					k++;
					if(k==1) {repo2="Bonne réponse"; }
					else {repo2="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep2.length>1) {repo2="Mauvaise réponse";}
		}
		request.setAttribute("repo2", repo2);
		
		ReponseDAO reponseDAO3 = new ReponseDAO();
		String vraireponse3=reponseDAO3.getvraireponse(Integer.parseInt(request.getParameterValues("i3")[0]));
		String[] tabrep3=request.getParameterValues("q3");
		QuestionDao question33=new QuestionDao();
		String question3=question33.avoirquestion(Integer.parseInt(request.getParameterValues("i3")[0]));
		request.setAttribute("question3", question3);
		ArrayList<String> reponses3 = reponseDAO3.getReponse(Integer.parseInt(request.getParameterValues("i3")[0]));
		request.setAttribute("reponse3", reponses3);
		String repo3="Mauvaise réponse";
		request.setAttribute("vrairepo3", vraireponse3);
		if (tabrep3!=null) {
			int j;
			int k = 0;
			for (j=0 ; j<tabrep3.length ; j++)
			{
				if(tabrep3[j].equals(vraireponse3)) {
					k++;
					if(k==1) {repo3="Bonne réponse"; }
					else {repo3="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep3.length>1) {repo3="Mauvaise réponse";}
		}
		request.setAttribute("repo3", repo3);
		
		ReponseDAO reponseDAO4 = new ReponseDAO();
		String vraireponse4=reponseDAO4.getvraireponse(Integer.parseInt(request.getParameterValues("i4")[0]));
		String[] tabrep4=request.getParameterValues("q4");
		QuestionDao question44=new QuestionDao();
		String question4=question44.avoirquestion(Integer.parseInt(request.getParameterValues("i4")[0]));
		request.setAttribute("question4", question4);
		ArrayList<String> reponses4 = reponseDAO4.getReponse(Integer.parseInt(request.getParameterValues("i4")[0]));
		request.setAttribute("reponse4", reponses4);
		String repo4="Mauvaise réponse";
		request.setAttribute("vrairepo4", vraireponse4);
		if (tabrep4!=null) {
			int j;
			int k = 0;
			for (j=0 ; j<tabrep4.length ; j++)
			{
				if(tabrep4[j].equals(vraireponse4)) {
					k++;
					if(k==1) {repo4="Bonne réponse"; }
					else {repo4="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep4.length>1) {repo4="Mauvaise réponse";}
		}
		request.setAttribute("repo4", repo4);
		
		ReponseDAO reponseDAO5 = new ReponseDAO();
		String vraireponse5=reponseDAO5.getvraireponse(Integer.parseInt(request.getParameterValues("i5")[0]));
		String[] tabrep5=request.getParameterValues("q5");
		QuestionDao question55=new QuestionDao();
		String question5=question55.avoirquestion(Integer.parseInt(request.getParameterValues("i5")[0]));
		request.setAttribute("question5", question5);
		ArrayList<String> reponses5 = reponseDAO5.getReponse(Integer.parseInt(request.getParameterValues("i5")[0]));
		request.setAttribute("reponse5", reponses5);
		String repo5="Mauvaise réponse";
		request.setAttribute("vrairepo5", vraireponse5);
		//System.out.println("vrairep5"+vraireponse5);
		//System.out.println("rep5"+tabrep5[0]);
		
		if (tabrep5!=null) {
			System.out.println("reponsetab5"+tabrep5[0]);
			System.out.println("vrairep5"+vraireponse5);
			int j;
			int k = 0;
			for (j=0 ; j<tabrep5.length ; j++)
			{
				if(tabrep5[j].equals(vraireponse5)) {
					k++;
					if(k==1) {repo5="Bonne réponse"; }
					else {repo5="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep5.length>1) {repo5="Mauvaise réponse";}
		}
		request.setAttribute("repo5", repo5);
		
		ReponseDAO reponseDAO6 = new ReponseDAO();
		String vraireponse6=reponseDAO6.getvraireponse(Integer.parseInt(request.getParameterValues("i6")[0]));
		String[] tabrep6=request.getParameterValues("q6");
		QuestionDao question66=new QuestionDao();
		String question6=question66.avoirquestion(Integer.parseInt(request.getParameterValues("i6")[0]));
		request.setAttribute("question6", question6);
		ArrayList<String> reponses6 = reponseDAO6.getReponse(Integer.parseInt(request.getParameterValues("i6")[0]));
		request.setAttribute("reponse6", reponses6);
		String repo6="Mauvaise réponse";
		request.setAttribute("vrairepo6", vraireponse6);
		if (tabrep6!=null) {
			
			int j;
			int k = 0;
			for (j=0 ; j<tabrep6.length ; j++)
			{
				if(tabrep6[j].equals(vraireponse6)) {
					k++;
					if(k==1) {repo6="Bonne réponse"; }
					else {repo6="Mauvaise réponse";}
					
					}
				else {k=2;}
			}
			if(tabrep6.length>1) {repo6="Mauvaise réponse";}
		}
		request.setAttribute("repo6", repo6);
		this.getServletContext().getRequestDispatcher("/WEB-INF/PAGE.jsp").forward(request, response);
	
	}

}
