package br.com.integrator.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.integrator.EnviaEmail;

/**
 * Servlet implementation class Enviar
 */
@WebServlet("/Enviar")
public class Enviar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String de = request.getParameter("de");
		String para = request.getParameter("para");
		String assunto = request.getParameter("assunto");
		String mensagem = request.getParameter("mensagem");
		RequestDispatcher rd = null;


		
		EnviaEmail enviaEmail = new EnviaEmail();
		
		enviaEmail.setDe(de);
		enviaEmail.setPara(para);
		enviaEmail.setAssunto(assunto);
		enviaEmail.setMensagem(mensagem);
		
		boolean enviado = enviaEmail.enviar();

		
		
		if(enviado)
			request.setAttribute("msg", "Enviado");	
		else
			request.setAttribute("msg", "Erro");	
			
		
		rd = request.getRequestDispatcher("/enviado.jsp");
		rd.forward(request, response);
		
	}

}
