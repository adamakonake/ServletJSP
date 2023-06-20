import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Utilisateur;
import service.UtilisateurService;

@WebServlet("/inscription")
public class Inscription extends HttpServlet {
	
	public static final String PAFE_ACCUEIL = "/ServletJSP/accueil";
	public static final String VUE_INS = "/inscrire.jsp";
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		this.getServletContext().getRequestDispatcher( VUE_INS ).forward( request, response );
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		UtilisateurService service = new UtilisateurService();
		Utilisateur utilisateur = service.inscrireUtilisateur(request);
		request.setAttribute("error", service.getErreur());
		request.setAttribute("user", utilisateur);
		if(!service.anError) {
			session.setAttribute(utilisateur.getPseudo(), utilisateur);
			session.setAttribute("current", utilisateur);
			utilisateur = null;
			System.gc();
			response.sendRedirect(PAFE_ACCUEIL);
		}else {
			service.setAnError(false);
			this.getServletContext().getRequestDispatcher( VUE_INS ).forward( request, response );
		}
		
	}

}
