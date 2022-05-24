package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/info")
public class MyServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("<table border='1'>");
		out.print("<tr>");
		out.print("<th>이름</th>");
		out.print("<th>나이</th>");
		out.print("<th>주소</th>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td>홍길동</td>");
		out.print("<td>20</td>");
		out.print("<td>서울</td>");
		out.print("</tr>");
		out.print("</table>");
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
