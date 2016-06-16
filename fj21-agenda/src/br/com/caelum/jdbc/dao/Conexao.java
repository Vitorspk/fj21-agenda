package br.com.caelum.jdbc.dao;

import java.sql.Connection;

import br.com.caelum.jdbc.ConnectionFactory;

public class Conexao {

	public static void main(String[] args) throws Throwable {
		// TODO Auto-generated method stub
		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		connection.close();
	}

}
