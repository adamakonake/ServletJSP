import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Utilisateur;
import service.UtilisateurService;

@WebServlet({"/connexion","/deconnexion"})
public class MonServlet2 extends HttpServlet {
	
	public static final String PAFE_ACCUEIL = "/ServletJSP/accueil";
	public static final String PAFE_CONNEXION = "/ServletJSP/connexion";
	public static final String VUE_CONECT = "/WEB-INF/connexion.jsp";

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		if(request.getRequestURI().equals("/ServletJSP/connexion")) {
			this.getServletContext().getRequestDispatcher(VUE_CONECT).forward(request, response);
		}else if (request.getRequestURI().equals("/ServletJSP/deconnexion")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect(PAFE_CONNEXION);
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		UtilisateurService service = new UtilisateurService();
		Utilisateur utilisateur = service.connecterUtilisateur(request,session);
		request.setAttribute("error", service.getErreur());
		request.setAttribute("user", utilisateur);
		if(!service.anError) {
			session.setAttribute("current", utilisateur);
			utilisateur = null;
			System.gc();
			response.sendRedirect(PAFE_ACCUEIL);
		}
		else {
			service.setAnError(false);
			this.getServletContext().getRequestDispatcher( VUE_CONECT ).forward( request, response );
		}
		
	}
	

}
