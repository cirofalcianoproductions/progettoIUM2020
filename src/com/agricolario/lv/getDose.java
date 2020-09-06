package com.agricolario.lv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.dao.ProdottoFitosanitarioDAO;
import com.agricolario.functionality.Validator;

/**
 * Servlet implementation class getDose
 */
@WebServlet("/getDose")
public class getDose extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getDose() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nome= request.getParameter("nome");
		String coltura= request.getParameter("coltura");
		double superficie = Double.parseDouble(request.getParameter("superficie"));
		System.out.println(nome);
		System.out.println(coltura);
		System.out.println(superficie);

		String str=	new ProdottoFitosanitarioDAO().getDose(nome, coltura);
		String str2= new ProdottoFitosanitarioDAO().getAvversita(nome);
		String [] avversita = str2.split(";");
		for (int i = 0; i < avversita.length; i++) {
			System.out.println(avversita[i]);
					
		}
		
		
	    System.out.println(str);
	    Validator v =new Validator(); 
	    double  dose= v.extractSuperficie(str);
	    
	    System.out.println((dose * superficie));
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
      //  out.append("");
        
		out.append("{\"dose\":\""+(dose * superficie)+"\",\"avversita\":[");   
		for (int i = 0; i < avversita.length; i++) {
		out.append("\""+avversita[i]+"\"");
		if(i<avversita.length-1) {
			out.append(",");
			
		}
		}
		
		out.append("]}");
		
		//out.append("]");

        
        
		out.flush();	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
