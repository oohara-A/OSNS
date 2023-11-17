package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Admin;

public class AdminDAO extends DAO {

	//ログイン
	public Admin search(String email, String password)
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
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return admin;
	}

	//管理者追加
	public Admin insert(String admin_name, String email, String password)
		throws Exception {

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"select * from admin where admin_name=? and email=? and password=?");
		st.setString(1, admin_name);
		st.setString(2, email);
		st.setString(3, password);
		ResultSet rs=st.executeQuery();

		Admin admin;
		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setAdmin_name(rs.getString("admin_name"));
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return admin;
	}
}