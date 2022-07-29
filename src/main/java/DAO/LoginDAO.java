package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import conexion.ConexionDB;


public class LoginDAO {

	public Boolean Login(Integer dni, String contrasenia) {

		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			

			String sql = new String();

			sql = "SELECT * from usuario where dni=" + dni + " and " + "password='" + contrasenia + "';";

			ResultSet resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
				
				return true;
			}

			return false;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
}

//Usuario usu;

//usu = new Usuario(si, no);