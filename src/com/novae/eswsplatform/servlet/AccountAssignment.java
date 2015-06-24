package com.novae.eswsplatform.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccountApply
 */
@WebServlet("/AccountAssignment")
public class AccountAssignment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private com.novae.eswsplatform.service.AdminService tempAdminService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountAssignment() {
		super();
		this.tempAdminService = new com.novae.eswsplatform.service.AdminServiceImp();
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
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] selectStrings = request.getParameterValues("select");
		int select = Integer.parseInt(selectStrings[0]);
		String name = request.getParameter("name");
		System.out.println(name);
		String account = request.getParameter("account");
		String password = request.getParameter("password");

		switch (select) {
		case 1:
			com.novae.eswsplatform.bean.ExpertBean expertBean;
			expertBean = new com.novae.eswsplatform.bean.ExpertBean(
					account, name, password, 0, 0, false);
			tempAdminService.expertRegister(account, password, expertBean);
			response.sendRedirect("AccountAssignment.jsp");
			break;
		case 2:
			com.novae.eswsplatform.bean.ReferBean referBean;
			referBean = new com.novae.eswsplatform.bean.ReferBean(account,
					name, password, 0, 0, false);
			tempAdminService.referRegister(account, password, referBean);
			response.sendRedirect("AccountAssignment.jsp");
			break;
		default:
			response.sendError(500, "error");
		}
		// TODO Auto-generated method stub
	}

}
