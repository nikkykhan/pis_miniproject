package add.faculty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.softech.FileUpload;

/**
 * Servlet implementation class AddFac
 */
@WebServlet("/AddFac")
@MultipartConfig(fileSizeThreshold=1024*1024*3, maxFileSize=1024*1024*10, maxRequestSize=1024*1024*50 )
public class AddFac extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFac() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			HttpSession ses=request.getSession();
			if(ses.getAttribute("id")==null)
			{
				response.sendRedirect("AdminLogin.jsp");
			}
			
			
			FacultyGS C=new FacultyGS();
			C.setName(request.getParameter("name"));
			C.setContact(request.getParameter("con"));
			C.setEmail(request.getParameter("eadd"));
			 
			Part part=request.getPart("pic");
			String savepath="F:/NITKWebsite/WebContent/image";
			FileUpload F=new FileUpload(part,savepath);
			C.setPic(F.filename);
			
			
//--------------------------------------------------------------HOD-------------------------------------------------------------//			
			if ("hod".equals(request.getParameter("fac")))
			{
				boolean st=AddAssProfJDBC.insertHOD(C);
				if(st)
				{
					request.setAttribute("message", "Faculty added Successfully");
					request.getRequestDispatcher("FAdd.jsp").forward(request, response);
					
				}
				else
				{
					request.setAttribute("message", "Faculty addition Unsuccessful");
					request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				}
				
			}
			
			
//----------------------------------------------------------Professor--------------------------------------------------------------//
		if ("prof".equals(request.getParameter("fac")))
		{
			boolean st=AddAssProfJDBC.insertProf(C);
			if(st)
			{
				request.setAttribute("message", "Faculty added Successfully");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("message", "Faculty addition Unsuccessful");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
			}
		}
//-------------------------------------------------------Assistant Professor------------------------------------------------------//
		if("assp".equals(request.getParameter("fac")))
		{
			boolean st=AddAssProfJDBC.insertAssFaculty(C);
			if(st)
			{
				request.setAttribute("message", "Faculty added Successfully");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("message", "Faculty addition Unsuccessful");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
			}
		}
//-----------------------------------------------------Associate Professor---------------------------------------------------------//
		if("assop".equals(request.getParameter("fac")))
		{
			boolean st=AddAssProfJDBC.insertAssoFaculty(C);
			if(st)
			{
				request.setAttribute("message", "Faculty added Successfully");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("message", "Faculty addition Unsuccessful");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
			}
		}
//--------------------------------------------------Adjunct Faculty--------------------------------------------------------------//
		if("adj".equals(request.getParameter("fac")))
		{
			boolean st=AddAssProfJDBC.insertAdjFaculty(C);
			if(st)
			{
				request.setAttribute("message", "Faculty added Successfully");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("message", "Faculty addition Unsuccessful");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
			}
		}
//-------------------------------------------------Temporary Faculty-----------------------------------------------------------//		
		if("temp".equals(request.getParameter("fac")))
		{
			boolean st=AddAssProfJDBC.insertTemp(C);
			if(st)
			{
				request.setAttribute("message", "Faculty added Successfully");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("message", "Faculty addition Unsuccessful");
				request.getRequestDispatcher("FAdd.jsp").forward(request, response);
			}
			
		}
		
		}catch(Exception e) {System.out.println(e);}
	}

}
