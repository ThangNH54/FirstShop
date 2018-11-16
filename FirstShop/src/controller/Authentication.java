package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import extension.SendMail;
import models.Customer;

/**
 * Servlet implementation class Authentication
 */
@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Authentication() {
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		Customer customer;
		
		if(Customer.login(userName, password)!=null)
		{
			customer=Customer.login(userName, password);
			HttpSession session=request.getSession();
			session.setAttribute("account", customer);
			String msg="You are logged in! ";
			request.setAttribute("msg", msg);

			request.getRequestDispatcher("userInfo").forward(request, response);

		}
		else
		{
			String msg="Message : UserName/Email or Password is not correct!";
			request.setAttribute("msg", msg);
			
			request.getRequestDispatcher("login").forward(request, response);
		}
		
	}

}
