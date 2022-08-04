package DAO;

import java.sql.Connection;
import java.sql.Statement;

import conexiones.ConexionDB;
import model.Usuario;

public class GuardarUsuarioDAO {

	public Boolean guardarUsuario(Usuario usuario) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "INSERT INTO `usuario`(`nombre`, `password`) VALUES ( " + "'" + usuario.getNombre() + "'," + "'"
					+ usuario.getContrasenia() + "');";

			statement.executeUpdate(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public Boolean crearUsuario(Usuario usuario) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "INSERT INTO `usuario`(`nombre`, `apellido`,`dni`, `telefono`,`mail`, `direccion`,`edad`, `password` ) "
					+ "VALUES ( " + "'" + usuario.getNombre() + "'," + "'" + usuario.getApellido() + "'," + "'"
					+ usuario.getDni() + "'," + "'" + usuario.getTelefono() + "'," + "'" + usuario.getMail() + "',"
					+ "'" + usuario.getDireccion() + "'," + "'" + usuario.getEdad() + "'," + "'"
					+ usuario.getContrasenia() + "');";

			statement.executeUpdate(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public Statement accederUsuario(Integer dni) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "SELECT * FROM `usuario` where dni="+dni+";";

			statement.executeUpdate(sql);

			return statement;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

}
