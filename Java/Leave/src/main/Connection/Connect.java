package Connection;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sakshi
 */
import java.sql.*;
import java.util.logging.*;

public class Connect {
	Connection con = null;
	public Connect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public boolean Ins_Upd_Del(String str) {
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leave?user=root&password=root");
			Statement st = con.createStatement();
			st.executeUpdate(str);
			st.close();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
			return false;
		}

	}

	public ResultSet SelectData(String str) {
		ResultSet rs = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leave?user=root&password=root");
			Statement st = con.createStatement();
			rs = st.executeQuery(str);
		} catch (SQLException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public void CloseConnection() {
		try {
			con.close();
		} catch (SQLException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
		}

	}

	public boolean CheckData(String str) {
		boolean b = false;
		try {
			ResultSet rs = SelectData(str);
			if (rs.next())
				b = true;
			CloseConnection();
		} catch (SQLException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
		}
		return b;
	}
}