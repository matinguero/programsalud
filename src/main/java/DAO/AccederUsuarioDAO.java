package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexiones.ConexionDB;
import model.Usuario;

public class AccederUsuarioDAO {
	
	
	public List<Usuario> accederUsuario(int dni) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String("SELECT * FROM usuario where dni="+dni+";");

			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println(resultSet);
			
			
			List<Usuario> datosUsuario = new ArrayList<Usuario>();
			while (resultSet.next()) {
				Usuario usu = new Usuario(
						resultSet.getString("nombre"),
						resultSet.getString("apellido"),
						resultSet.getInt("dni"),
						resultSet.getInt("telefono"),						
						resultSet.getString("mail"),
						resultSet.getString("direccion"),
						resultSet.getInt("edad"),						
						resultSet.getString("password"));
				
				datosUsuario.add(usu);
			}
			
			return datosUsuario;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
