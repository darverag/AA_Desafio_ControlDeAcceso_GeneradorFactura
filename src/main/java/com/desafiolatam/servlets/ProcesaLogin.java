package com.desafiolatam.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/procesaLogin")
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creación de usuario y contraseña 
		String admin ="admin";
		String contrasena ="admin";
		String login = request.getParameter("login");
		String password= request.getParameter("password");
		
		//validar los parámetros
		if(login.isEmpty() || login==null || password.isEmpty() || password==null){
			
			request.setAttribute("msgError", "Datos faltantes, por favor verifique!!!");
			request.getRequestDispatcher("/").forward(request, response);
			
		}else {
			if(admin.equals(login) && contrasena.equals(password)){
				HttpSession sesion= request.getSession(true);
				sesion.setAttribute("Nombre", login);
				
				request.getRequestDispatcher("/calculadora").forward(request, response);
				
			}else {
				request.setAttribute("msgError", "Datos incorrectos, por favor verifique!!!");
				request.getRequestDispatcher("/").forward(request, response);
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
