package br.com.caelum.mvc.logica;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContato implements Logica{
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		Contato contato = new Contato();
		
		if (request.getParameterMap().containsKey("id")) {
			long id = Long.parseLong(request.getParameter("id"));
			contato.setId(id);
			ContatoDAO dao = new ContatoDAO();
			contato = dao.getContato(contato);
		}

		request.setAttribute("contato", contato);
		return "jsp/alteraContato.jsp";
		
//		try{
//		long id = Long.parseLong(request.getParameter("id"));
//			Contato contato = new Contato();
//			contato.setId(id);			
//			ContatoDAO dao = new ContatoDAO();
//			dao.altera(contato);
////			contato = dao.getContato(contato);
//			request.setAttribute("contato", contato);
//
//		} catch (Exception e) {
//			System.out.println("Não foi encontrado nenhum contato");
//			e.printStackTrace();
//		}
//		return "jsp/alteraContato.jsp";
	}
}
