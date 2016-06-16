package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class ContatoLogin  implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Contato contato = new Contato();
		
		if (request.getParameterMap().containsKey("id")) {
			long id = Long.parseLong(request.getParameter("id"));
			contato.setId(id);
			ContatoDAO dao = new ContatoDAO();
			contato = dao.getContato(contato);
		}

		request.setAttribute("contato", contato);		
		return "jsp/Cadastro.jsp";
	}

}
