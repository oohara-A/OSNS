package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;

import bean.User;
//ログイン操作など
public class UserDAO extends DAO {
	public User search(String user_name, String password,LocalDateTime login_date)
			throws Exception {
			User user=null;
			//データベース接続
			Connection con=getConnection();

			PreparedStatement st;
			//SQL文ログインしたユーザ情報があるかどうか
			st=con.prepareStatement(
				"select * from user where user_name=? and password=?");
			//？に代入
			st.setString(1, user_name);
			st.setString(2, password);
			//SQL文実行
			ResultSet rs=st.executeQuery();

			//ユーザのログイン情報を登録
			while (rs.next()) {
				user=new User();
				user.setId(rs.getInt("id"));
				user.setPassword(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
			}
			//データベース接続切断
			st.close();
			con.close();
			return user;
		}
}
