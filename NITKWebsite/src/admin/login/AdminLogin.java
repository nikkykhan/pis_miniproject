package admin.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.login.LoginJDBC;
import admin.login.LoginGS;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
try {
			
			String id=request.getParameter("id");
			String pass=request.getParameter("pass");
			LoginGS r=LoginJDBC.checkPassword(id, pass);
			//System.out.println(r.getRole());

			
			if(r!=null)
			{   
				HttpSession ses=request.getSession();
				ses.setAttribute("id", id);
				request.setAttribute("message", "Admin");
				request.getRequestDispatcher("Delete.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("message", "NotFound");
				request.getRequestDispatcher("Delete.jsp").forward(request, response);
			}
		}catch(Exception e) {System.out.println(e);}
	}

}
