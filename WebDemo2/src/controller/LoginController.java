package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String loginId=request.getParameter("loginId");
		String password=request.getParameter("passwd");
		
		model.User userObj=new model.User();
		
		userObj.setLoginId(loginId);
		userObj.setPassword(password);
		
		try
		{
		
			dao.UserDAO userDAO=new dao.UserDAO();			
			model.User tempUser=userDAO.checkLogin(userObj);
			
			if(tempUser!=null)
			{
				request.setAttribute("loginId", loginId);
				request.setAttribute("userInfo", tempUser);
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("Success.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				request.setAttribute("errorInfo", "Invalid Login ID and password!");
				RequestDispatcher dispatcher=request.getRequestDispatcher("Error.jsp");
				dispatcher.forward(request, response);			
			}
		}
		catch(Exception e)
		{
			request.setAttribute("errorInfo", "Exception occurred while inserting:"+e.getMessage());
			RequestDispatcher dispatcher=request.getRequestDispatcher("Error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
