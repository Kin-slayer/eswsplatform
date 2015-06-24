package com.novae.eswsplatform.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private com.novae.eswsplatform.service.LoginService loginService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		this.loginService = new com.novae.eswsplatform.service.LoginServiceImp();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int role = Integer.parseInt(request.getParameter("RadioGroup1"));
		String account = request.getParameter("username");
		String psw = request.getParameter("password");
		
		if (loginService.isOpen(role)) {
			if (loginService.login(account, psw, role)) {
				Cookie accountCookie = new Cookie("account", account);
				Cookie pswCookie = new Cookie("psw", psw);
				Cookie roleCookie = new Cookie("role", request.getParameter("RadioGroup1"));
				accountCookie.setPath(request.getContextPath());
				pswCookie.setPath(request.getContextPath());
				roleCookie.setPath(request.getContextPath());
				response.addCookie(accountCookie);
				response.addCookie(pswCookie);
				response.addCookie(roleCookie);
				response.sendRedirect("html_woshibala/login.jsp");
			}
		}
		
		/*
		switch (type) {
		case 0:
			
			break;
			
		case 1:
			
			if (loginService.isOpen(1)) {
				if (loginService.login(username, password, 1)) {
					
				}
			}

		default:
			break;
		}
		*/
		// TODO Auto-generated method stub
	}
}
