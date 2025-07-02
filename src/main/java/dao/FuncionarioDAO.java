package dao;

import model.Funcionario;
import db.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FuncionarioDAO {
	private static FuncionarioDAO instancia;
	private FuncionarioDAO() {}
	public static FuncionarioDAO getInstancia() {
		if (instancia == null) {
			instancia = new FuncionarioDAO();
		}
		return instancia;
	}
	
	public void inserirFuncionario(Connection conn, Funcionario funcionario) throws SQLException {
		char genero = Character.toUpperCase(funcionario.getFun_gen());
		if (genero != 'F' && genero != 'M') {
			throw new IllegalArgumentException("Gênero inválido. Use apenas 'F' ou 'M'.");
		}

		String sql = "INSERT INTO FUNCIONARIO (COD_CARGO, FUN_NOME, FUN_CPF, FUN_RG, FUN_DATA_NAS, FUN_GEN) VALUES (?, ?, ?, ?, ?, ?)";

		try (PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, funcionario.getCod_cargo());
			stmt.setString(2, funcionario.getFun_nome());
			stmt.setLong(3, Long.parseLong(funcionario.getFun_cpf()));
			stmt.setLong(4, Long.parseLong(funcionario.getFun_rg()));
			stmt.setDate(5, java.sql.Date.valueOf(funcionario.getFun_data_nas()));
			stmt.setString(6, String.valueOf(genero));

			stmt.executeUpdate();
			System.out.println("Funcionário inserido com sucesso.");
		}
	}
	
	public Funcionario buscarPorId(int id) throws SQLException {
		String sql = "SELECT * FROM FUNCIONARIO WHERE FUN_COD = ?";
		try (Connection conn = Conexao.getInstancia().getConexao();
			 PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return extrairFuncionario(rs);
			}
		}
		return null;
	}
	
	public List<Funcionario> listarTodos() throws SQLException {
		List<Funcionario> lista = new ArrayList<>();
		String sql = "SELECT * FROM FUNCIONARIO";
		try (Connection conn = Conexao.getInstancia().getConexao();
			 Statement stmt = conn.createStatement();
			 ResultSet rs = stmt.executeQuery(sql)) {

			while (rs.next()) {
				lista.add(extrairFuncionario(rs));
			}
		}
		return lista;
	}
	
	private Funcionario extrairFuncionario(ResultSet rs) throws SQLException {
		Funcionario f = new Funcionario();
		f.setFun_cod(rs.getInt("FUN_COD"));
		f.setCod_cargo(rs.getInt("COD_CARGO"));
		f.setFun_nome(rs.getString("FUN_NOME"));
		f.setFun_cpf(String.valueOf(rs.getLong("FUN_CPF")));
		f.setFun_rg(String.valueOf(rs.getLong("FUN_RG")));
		f.setFun_data_nas(rs.getDate("FUN_DATA_NAS").toLocalDate());
		f.setFun_gen(rs.getString("FUN_GEN").charAt(0));
		return f;
	}
}
