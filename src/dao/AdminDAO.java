package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Customer;

public class AdminDAO extends DAO {
	public Customer search(String login, String password)
		throws Exception {
		Admin admin=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"select * from admin where email=? and password=?");
		st.setString(1, email);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setLogin(rs.getString("login"));
			admin.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return admin;
	}
}
