package servlet;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class LoginTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testUserVerif() throws SQLException {
		// A et B
		String A ="Nom";
		String B ="Pass";
		Login D = new Login();
		boolean C = D.userVerif(A, B);
		assertEquals(false, C); // False car ici on a pas encore implaimenter l'array list des utilsateurs
	}

}
