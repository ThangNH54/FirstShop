package controller;

import java.io.IOException;
import java.net.HttpCookie;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import extension.CreateHashCode;
import extension.SendMail;
import models.Customer;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String userName=request.getParameter("userName");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String confirmPassword=request.getParameter("confirmPassword");
			String firstName=request.getParameter("firstName"); 
			String lastName=request.getParameter("lastName"); 
			long phone=Integer.parseInt(request.getParameter("phoneNumber"));
			String addr=request.getParameter("addr"); 
			String sex=request.getParameter("sex"); 
			String urlAvatar="null";
			String ID=userName+email;

			Customer customer=new Customer(ID, userName, email, password, firstName, lastName, phone, addr, sex, urlAvatar);
			
			if(password.equals(confirmPassword))//kiem tra khop mat khau
			{
				
				if(CustomerDao.getInfoCustomer(userName)==null&&CustomerDao.getInfoCustomer(email)==null)//kiem tra tai khoan chua ton tai
				{
					
					
					//gui mail xac thuc
					String code=CreateHashCode.getCode();
					String content="Ma Xac Thuc Tai Khoan La : "+code+".";
					if(SendMail.send(request.getServletContext().getInitParameter("mailshop"), request.getServletContext().getInitParameter("passmailshop"), email, "Shop-Confirm Email", content)==true)
					{
						HttpSession session=request.getSession();
						session.setAttribute("code", code);
						session.setAttribute("waitConfirmEmail", customer);
						request.getRequestDispatcher("formConfirmEmail.jsp").forward(request, response);
					}
					else
					{
						String msg="Message :Có Lỗi Xảy Ra Khi Xác Thực Email.Thử lại!";
						request.setAttribute("msg", msg);
						
						request.getRequestDispatcher("register").forward(request, response);
					}
						
	
					
					
				}
				else
				{
					String msg="Message :UserName hoặc Email đã được sử dụng!";
					request.setAttribute("msg", msg);
					
					request.getRequestDispatcher("register").forward(request, response);
				}
				
			}
			
			else
			{
				String msg="Message : Mật Khẩu Xác Thực Không Khớp!";
				request.setAttribute("msg", msg);
				
				request.getRequestDispatcher("register").forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			String msg="Message :Erro Register. Try again!";
			request.setAttribute("msg", msg);
			
			request.getRequestDispatcher("register").forward(request, response);
		}
		
		
	}

}
