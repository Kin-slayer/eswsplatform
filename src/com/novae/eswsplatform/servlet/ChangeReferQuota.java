package com.novae.eswsplatform.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class changeReferQuota
 */
@WebServlet("/changeReferQuota")
public class ChangeReferQuota extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private com.novae.eswsplatform.service.AdminService adminService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeReferQuota() {
        super();
        adminService = new com.novae.eswsplatform.service.AdminServiceImp();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			adminService.changeReferQuota(id, num);
		} catch (Exception e) {
			response.sendError(404, "failed");
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
