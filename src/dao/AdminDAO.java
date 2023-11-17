package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Admin;
import bean.Customer;

public class AdminDAO extends DAO {
	public Customer search(String login, String password)
		throws Exception {
		Admin admin=null;

		Connection con=getConnection();

		// ログイン
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
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
		}

		// ログアウト
		st.close();
		con.close();
		return admin;
	}
}