package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Customer;

/**
 * Servlet implementation class ConfirmEmail
 */
@WebServlet("/ConfirmEmail")
public class ConfirmEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code=request.getParameter("code");
		HttpSession session=request.getSession();
		System.out.println("code nhap : "+code);
		System.out.println("code attribute : "+session.getAttribute("code"));
		if(code.equals(session.getAttribute("code")))
		{
			//ghi vao database
			Customer customer=(Customer) session.getAttribute("waitConfirmEmail");
			session.removeAttribute("code");
			session.removeAttribute("waitConfirmEmail");
			if(Customer.register(customer))
			{
				String msg="Success! ";
				request.setAttribute("msg", msg);
				request.getRequestDispatcher("message.jsp").forward(request, response);
			}
			else
				
			{
				String msg="Message :Erro Register. Try again!";
				request.setAttribute("msg", msg);
				
				request.getRequestDispatcher("register").forward(request, response);
			}
		}
		else
		{
			String msg="Message : Mã Xác Thực Không Đúng!";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("formConfirmEmail.jsp").forward(request, response);
		}
	}


}
