package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserAdd {

	 public int registerEmployee(user employee) throws ClassNotFoundException, SQLException {
	        String INSERT_USERS_SQL = "INSERT INTO users" +
	            "(utilisateur,pass)  VALUES " +
	            " (?, ?);";

	        int result = 0;
            
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        try (Connection connection = DriverManager.getConnection("jdbc:sqlserver://Hyrkul;databaseName=DevOps;integratedSecurity=true","","");

	            // Step 2:Create a statement using connection object
	            PreparedStatement Requete = connection.prepareStatement(INSERT_USERS_SQL)) {
	        	Requete.setString(1, employee.getNom());
	        	Requete.setString(2, employee.getPass());

	            System.out.println("Utilisateur ajouter");
	            // Step 3: Execute the query or update query
	            result = Requete.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	        	e.getMessage();
	        }
	        return result;
	    }
	}