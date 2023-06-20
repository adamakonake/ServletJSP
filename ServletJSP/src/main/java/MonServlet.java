import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import bean.Utilisateur;
import service.UtilisateurService;

@WebServlet("/accueil")
public class MonServlet extends HttpServlet {
	
	public static final String VUE = "/WEB-INF/accueil.jsp";
	public static final String VUE_INS = "/inscrire.jsp";
	public static final String VUE_CONEC = "/WEB-INF/connexion.jsp";
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		request.setAttribute("user", session.getAttribute("pseudo"));
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			
	}

}
