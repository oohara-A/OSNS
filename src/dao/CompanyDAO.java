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

	//企業追加
	public Company register(String name, String company_name, String address, String email, String phone_number, String password, Date add_date)
		throws Exception {
		Company company=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into company name=? and company_name=? and address=? and email=? and phone_number=? and password=? and add_date=?");
		st.setString(1, name);
		st.setString(2, company_name);
		st.setString(3, address);
		st.setString(4, email);
		st.setString(5, phone_number);
		st.setString(6, password);
		st.setDate(7, add_date);
		ResultSet rs=st.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			company=new Company();
			company.setId(rs.getInt("id"));
			company.setName(rs.getString("name"));
			company.setCompany_name(rs.getString("company_name"));
			company.setAddress(rs.getString("address"));
			company.setEmail(rs.getString("email"));
			company.setPhone_number(rs.getString("phone_number"));
			company.setPassword(rs.getString("password"));
			company.setAdding_time(rs.getDate("add_date"));
		}
		st.close();
		con.close();
		return company;
	}

	//企業削除
	public boolean deletecompany(int companyId)
		throws Exception {
		boolean flag =true;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update company set flag = ?,where companyId = ?");
		st.setBoolean(1, flag);
		st.setInt(2,companyId);

		st.close();
		con.close();

		return true;
	}

	public Company editcompinfo(String name,String company_name,String address,String email,String phone_number,String password)
		throws Exception {
		Company company=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"update company set name=? and company_name=? and address=? and email=? and phone_number=? and password=?");
		st.setString(1, name);
		st.setString(2, company_name);
		st.setString(3, address);
		st.setString(4, email);
		st.setString(5, phone_number);
		st.setString(6, password);
		ResultSet rs=st.executeQuery();

		// 検索結果を管理者Beanに保存する
		while (rs.next()) {
			company=new Company();
			company.setId(rs.getInt("id"));
			company.setName(rs.getString("name"));
			company.setCompany_name(rs.getString("company_name"));
			company.setAddress(rs.getString("address"));
			company.setEmail(rs.getString("email"));
			company.setPhone_number(rs.getString("phone_number"));
			company.setPassword(rs.getString("password"));
		}
		st.close();
		con.close();
		return company;
	}
}
