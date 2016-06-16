package br.com.caelum.mvc.logica;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;


public class AdicionaContato  implements Logica {
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // busca o writer
        PrintWriter out = response.getWriter();

		long id = 0;
        
        if (request.getParameterMap().containsKey("id") && !request.getParameter("id").isEmpty())
			id = Long.parseLong(request.getParameter("id"));
        
        // buscando os parâmetros no request
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String dataEmTexto = request.getParameter("dataNascimento");
        Calendar dataNascimento = null;
        
        // fazendo a conversão da data
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
            dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(date);
        } catch (ParseException e) {
            out.println("Erro de conversão da data");
            return "jsp/adiciona-contato.jsp";
        }
        
        // monta um objeto contato
        Contato contato = new Contato();
        contato.setId(id);
        contato.setNome(nome);
        contato.setEndereco(endereco);
        contato.setEmail(email);
        contato.setDataNascimento(dataNascimento);
        
        // salva o contato
        ContatoDAO dao;
        try {
		dao = new ContatoDAO();
		if (contato.getId() ==0)
			dao.adiciona(contato);
		else
			dao.altera(contato);
        }catch (ClassNotFoundException | InstantiationException
				| IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "jsp/lista-contatos.jsp";
	}
	
}
