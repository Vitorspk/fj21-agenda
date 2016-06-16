package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;


public class ListaContato implements Logica {
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		System.out.println("Executando a logica ...");
		System.out.println("Retornando o nome da página JSP ...");
		
	      List<Contato> contatos = new ContatoDAO().getLista();
	      request.setAttribute("contatos", contatos);	  
	      return "jsp/lista-contatos.jsp";
	  }
	}