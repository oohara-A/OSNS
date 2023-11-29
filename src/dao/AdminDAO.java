package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Admin;

public class AdminDAO extends DAO {

	//ログイン
	public Admin login(String email, String password, Date login_date)
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


		//ログイン時の日時
		Connection con2=getConnection();

		// SQL文を実行
		PreparedStatement st2;
		st2=con2.prepareStatement(
			"update admin set update_time=?");
		st2.setDate(1,login_date );
		ResultSet rs2=st2.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs2.next()) {
			admin=new Admin();
			admin.setId(rs2.getInt("id"));
			admin.setUpdate_time(rs2.getDate("login_date"));
		}

		st2.close();
		con2.close();
		return admin;
	}

	//管理者追加
	public Admin add(String admin_name, String email, String password, Date add_date)
		throws Exception {
		Admin admin=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into admin admin_name=? and email=? and password=? and add_date=?");
		st.setString(1, admin_name);
		st.setString(2, email);
		st.setString(3, password);
		st.setDate(4, add_date);
		ResultSet rs=st.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setAdmin_name(rs.getString("admin_name"));
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
			admin.setAdding_time(rs.getDate("add_date"));
		}
		st.close();
		con.close();
		return admin;
	}

	//管理者一覧
	public List<Admin> showadmin()
		throws Exception {
		List<Admin> admin_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from admin");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Admin admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setAdmin_name(rs.getString("admin_name"));
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
			admin_list.add(admin);
		}

		st.close();
		con.close();
		return admin_list;
	}

	//企業一覧
		public List<Admin> showcompany(String company_name)
			throws Exception {
			List<Admin> company_list=new ArrayList<>();

			Connection con=getConnection();

			PreparedStatement st=con.prepareStatement(
				"select * from admin where company_name like ?");
			st.setString(1, "%"+company_name+"%");
			ResultSet rs=st.executeQuery();

			while (rs.next()) {
				Admin company=new Admin();
				company.setId(rs.getInt("id"));
				company.setAdmin_name(rs.getString("company_name"));
				company.setEmail(rs.getString("email"));
				company.setPassword(rs.getString("password"));
				company_list.add(company);
			}

			st.close();
			con.close();
			return company_list;
		}

	//管理者削除
	public boolean update(int adminId)
		throws Exception {
		boolean flag =true;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update admin set flag = ?,where adminId = ?");
		st.setBoolean(1, flag);
		st.setInt(2,adminId);

		st.close();
		con.close();

		return true;
	}
}