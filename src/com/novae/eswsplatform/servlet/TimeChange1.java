package com.novae.eswsplatform.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimeChange1
 */
@WebServlet("/TimeChange1")
public class TimeChange1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private com.novae.eswsplatform.service.AdminService adminService; 
	private com.novae.eswsplatform.bean.SystemTimeBean tempSystemTimeBean;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeChange1() {
        super();
        this.adminService = new com.novae.eswsplatform.service.AdminServiceImp();
        this.tempSystemTimeBean = new com.novae.eswsplatform.bean.SystemTimeBean();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long time = 0;
		StringBuffer stringBuffer;
		stringBuffer = new StringBuffer();
		stringBuffer.append(request.getParameter("startYear"));
		stringBuffer.append(request.getParameter("startMonth"));
		stringBuffer.append(request.getParameter("startDay"));
		stringBuffer.append(request.getParameter("startHour"));
		stringBuffer.append(request.getParameter("startMinute"));
		stringBuffer.append(request.getParameter("startSecond"));
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYYMMDDhhmmss");
		try {
			time = simpleDateFormat.parse(stringBuffer.toString()).getTime();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Timestamp openTime = new Timestamp(time);
		
		stringBuffer = new StringBuffer();
		stringBuffer.append(request.getParameter("endYear"));
		stringBuffer.append(request.getParameter("endMonth"));
		stringBuffer.append(request.getParameter("endDay"));
		stringBuffer.append(request.getParameter("endHour"));
		stringBuffer.append(request.getParameter("endMinute"));
		stringBuffer.append(request.getParameter("endSecond"));
		try {
			time = simpleDateFormat.parse(stringBuffer.toString()).getTime();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Timestamp endTime = new Timestamp(time);
		
//		System.out.println(startYear);
//		int startYear=Integer.parseInt(request.getParameter("startYear"));
//		int startMonth=Integer.parseInt(request.getParameter("startMonth"));
//		int startDay=Integer.parseInt(request.getParameter("startDay"));
//		int startHour=Integer.parseInt(request.getParameter("startHour"));
//		int startMinute=Integer.parseInt(request.getParameter("startMinute"));
//		int startSecond=Integer.parseInt(request.getParameter("startSecond"));
//		int endYear=Integer.parseInt(request.getParameter("endYear"));
//		System.out.println(endYear);
//		int endMonth=Integer.parseInt(request.getParameter("endMonth"));
//		int endDay=Integer.parseInt(request.getParameter("endDay"));
//		int endHour=Integer.parseInt(request.getParameter("endHour"));
//		int endMinute=Integer.parseInt(request.getParameter("endMinute"));
//		int endSecond=Integer.parseInt(request.getParameter("endSecond"));
//		
		
//		@SuppressWarnings("deprecation")
//		Timestamp openTime = new Timestamp(startYear - 1900, startMonth, startDay, startHour, startMinute, startSecond, 0);
//		@SuppressWarnings("deprecation")
//		Timestamp endTime = new Timestamp(endYear - 1900, endMonth, endDay, endHour, endMinute, startSecond, 0);
		
		System.out.println(openTime);
		System.out.println(endTime);
		this.tempSystemTimeBean.setOpenTime(openTime);
		this.tempSystemTimeBean.setCloseTime(endTime);
		this.tempSystemTimeBean.setId(1);
		
		this.adminService.changeTime(1, this.tempSystemTimeBean);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
