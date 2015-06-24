package com.novae.eswsplatform.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.novae.eswsplatform.bean.DeclarerBean;

/**
 * Servlet implementation class Basicinformation
 */
@WebServlet("/Basicinformation")
public class BasicInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private com.novae.eswsplatform.service.DeclarerService declarerService;
    private com.novae.eswsplatform.bean.DeclarerBean declarerBean;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BasicInformation() {
        super();
        declarerService = new com.novae.eswsplatform.service.DeclarerServiceImp();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idNum = request.getParameter("idNum");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String nation = request.getParameter("nation");
		String eduBg = request.getParameter("eduBg");
		String degree = request.getParameter("degree");
		String party = request.getParameter("party");
		String birthDay = request.getParameter("birthDay");
		String birthPlace = request.getParameter("birthPlace");
		String subject = request.getParameter("subject");
		String addrWork = request.getParameter("addrWork");
		String what = request.getParameter("what");
		String proJob = request.getParameter("proJob");
		String exeJob = request.getParameter("exeJob");
		String telPerNum = request.getParameter("telPerNum");
		String telWorkNum = request.getParameter("telWorkNum");
		String EMail = request.getParameter("EMail");
		String telHomeNum = request.getParameter("telHomeNum");
		String unitName = request.getParameter("unitName");
		String addrHome = request.getParameter("addrHome");
		String postcode = request.getParameter("postcode");
		
		this.declarerBean = new com.novae.eswsplatform.bean.DeclarerBean();
		
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
