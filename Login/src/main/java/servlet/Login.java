package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.captcha.botdetect.web.servlet.Captcha;

import beans.UserVerification;
import beans.user;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<user> Users = new ArrayList<user>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Creation d'un objet Captcha pour appiquer les methodes de validation
		Captcha captcha = Captcha.load(request, "TagDuCaptcha");
		boolean isHuman = captcha.validate(request.getParameter("CodeDuCaptcha"));
		// Ajout des utilisateur pour verifier avec formulaire
		ajoutUser(request, response);
		// Verification de Login et mot de passe ainsi Le captcha !
		String A = request.getParameter("pseudo");
		String B = request.getParameter("password");
		if (UserVerification.checkUser(A, B) == true && isHuman == true) {
			// Renvoie vers la page d'affichage
			this.getServletContext().getRequestDispatcher("/afficher.jsp").forward(request, response);
		} else
			// Renvoie vers la page d'erreur
			this.getServletContext().getRequestDispatcher("/Erreur.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	// Ajout des utilisateurs pour se connecter
	public void ajoutUser(HttpServletRequest request, HttpServletResponse response) {
		// Creation des objets Users

		// setUp de javaBean
		String A = request.getParameter("pseudo");
		String B = request.getParameter("password");
		user E = new user();
		E.setNom(A);
		E.setPass(B);
		request.setAttribute("uUser", E);
	}

	// Verification des utilisateurs dans notre list
	// La methode a tester aussi
	public boolean userVerif(String A, String B) throws SQLException {
		
		for (user us : Users) {
			if (A != null && B != null && A.equals(us.getNom()) && B.equals(us.getPass()))
				return true;
		}
		return false;
	}
}
