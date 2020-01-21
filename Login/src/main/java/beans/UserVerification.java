package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserVerification {
	public static boolean checkUser(String email,String pass) 
    {
		String INSERT_USERS_SQL = "select * from users where utilisateur=? and pass=?";

        boolean st =false;
        try {

            //loading drivers for sqlserver
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:sqlserver://Hyrkul;databaseName=DevOps;integratedSecurity=true","","");
            PreparedStatement Requete = con.prepareStatement(INSERT_USERS_SQL);
            Requete.setString(1, email);
            Requete.setString(2, pass);
            ResultSet rs =Requete.executeQuery();
            st = rs.next();

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }   
}