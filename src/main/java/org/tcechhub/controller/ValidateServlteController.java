package org.tcechhub.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.techhub.model.LoginModel;
import org.techhub.repository.DBConfig;
import org.techhub.repository.DBParent;
import org.techhub.service.ValidateUserService;
import org.techhub.service.ValidateUserServiceImpl;


@WebServlet("/valid")
public class ValidateServlteController extends HttpServlet {
	
	
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String path = this.getServletContext().getRealPath("/")+"resources\\db.properties";
		DBParent.path=path;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginModel model = new LoginModel();
		model.setUsername(username);
		model.setPassword(password);
		ValidateUserService validService = new ValidateUserServiceImpl(); 
		model = validService.isValidateUser(model);
		if(model.getLoginType().equals("super admin"))
		{
			RequestDispatcher r = request.getRequestDispatcher("superadmindashboard.jsp");
			r.forward(request, response);
		}
		else if(model.getLoginType().equals("employee"))
		{
			out.println("call dashboard for employee");
		}
		else
		{
			out.println("invalid username and password");
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
