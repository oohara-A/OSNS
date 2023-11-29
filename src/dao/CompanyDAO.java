package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Company;

public class CompanyDAO extends DAO{

	//ログイン
	public Company login(String email, String password, Date login_date)
		throws Exception {
		Company company=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"select * from company where email=? and password=?");
		st.setString(1, email);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			company=new Company();
			company.setId(rs.getInt("id"));
			company.setEmail(rs.getString("email"));
			company.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();


		//ログイン時の日時
		Connection con2=getConnection();

		// SQL文を実行
		PreparedStatement st2;
		st2=con2.prepareStatement(
			"update company set update_time=?");
		st2.setDate(1,login_date );
		ResultSet rs2=st2.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs2.next()) {
			company=new Company();
			company.setId(rs2.getInt("id"));
			company.setUpdate_time(rs2.getDate("login_date"));
		}

		st2.close();
		con2.close();
		return company;
	}
}
