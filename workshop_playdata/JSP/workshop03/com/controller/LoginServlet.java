package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/myLogin")
public class LoginServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("이름은 "+userid+"이고 비밀번호는 "+passwd); 
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}


//form data를 getParameter로 전달받아 해당 값 
