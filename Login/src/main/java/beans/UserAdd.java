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
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setString(1, employee.getNom());
	            preparedStatement.setString(2, employee.getPass());

	            System.out.println("Utilisateur ajouter");
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return result;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	}