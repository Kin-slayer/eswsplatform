package com.novae.eswsplatform.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.novae.eswsplatform.service.AdminServiceImp;

/**
 * Servlet implementation class GroupApply
 */
@WebServlet("/GroupApply")
public class GroupApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private com.novae.eswsplatform.service.AdminService adminService;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GroupApply() {
        super();
        adminService = new com.novae.eswsplatform.service.AdminServiceImp();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String groupName = request.getParameter("groupName");
		int maxNum = Integer.parseInt(request.getParameter("maxNum"));
		com.novae.eswsplatform.bean.GroupBean groupBean = new com.novae.eswsplatform.bean.GroupBean(groupName, maxNum, false);
		adminService.addGroup(groupBean);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
