package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Admin;
import bean.Company;
import bean.Review;
import bean.User;

public class AdminDAO extends DAO {

	//ログイン
	public Admin login(String email, String password, Date login_date)
		throws Exception {
		Admin admin=null;
		List<Admin>admin_list = new ArrayList<>();

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"select * from admin where email=? and password=? and flag = 0");
		st.setString(1, email);
		st.setString(2, password);
		//SQL文実行
		ResultSet rs=st.executeQuery();
		//ユーザのログイン情報を登録
		while (rs.next()) {
			admin = new Admin();
			admin.setId(rs.getInt("id"));
			admin.setAdmin_name(rs.getString("admin_name"));
			System.out.println(rs.getString("admin_name"));
			admin.setPassword(rs.getString("password"));
			admin.setEmail(rs.getString("email"));
			System.out.println(rs.getString("email"));
			admin.setAdding_time(rs.getDate("adding_time"));
			System.out.println(rs.getString("adding_time"));

		}
//		//ログイン時の日時
	// SQL文を実行
		st=con.prepareStatement(
			"update admin set update_time=?");
		st.setDate(1,login_date );
		st.executeUpdate();
		st.close();
		con.close();
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
			"insert into admin(ADMIN_NAME,email,password,adding_time) values(?,?,?,?)");
		st.setString(1, admin_name);
		st.setString(2, email);
		st.setString(3, password);
		st.setDate(4, add_date);
		st.executeUpdate();

		st.close();
		con.close();
		return admin;
	}

	//管理者一覧
	public List<Admin> show_admin()
		throws Exception {
		List<Admin> admin_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from admin where flag=0");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Admin admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setAdmin_name(rs.getString("admin_name"));
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
			admin.setAdding_time(rs.getDate("add_date"));
			admin_list.add(admin);
		}

		st.close();
		con.close();
		return admin_list;
	}

	//企業一覧
	public List<Company> show_company(String company_name)
		throws Exception {
		List<Company> company_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from company where company_name like ? and flag=0");
		st.setString(1, "%"+company_name+"%");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Company company=new Company();
			company.setId(rs.getInt("id"));
			company.setCompany_name(rs.getString("company_name"));
			company.setEmail(rs.getString("email"));
			company.setPassword(rs.getString("password"));
			company.setAdding_time(rs.getDate("adding_time"));
			company_list.add(company);
		}

		st.close();
		con.close();
		return company_list;
	}

	//ユーザ一覧
	public List<User> show_user(String user_name)throws Exception {
		List<User> user_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from user where user_name like ? and flag=0");
		st.setString(1, "%"+user_name+"%");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			User user=new User();
			user.setId(rs.getInt("id"));
			user.setUser_name(rs.getString("user_name"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setAdding_time(rs.getDate("adding_time"));
			user_list.add(user);
		}

		st.close();
		con.close();
		return user_list;
	}

//	レビュー一覧表示処理
	public List<Review> show_review(String user_id)throws Exception {
		List<Review> review_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from review where user_id like ? and flag=0");
		st.setString(1, "%"+user_id+"%");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Review review=new Review();
			review.setProduct_id(rs.getInt("product_id"));
			review.setUser_id(rs.getInt("user_id"));
			review.setRating(rs.getInt("rating"));
			review.setReviewbody(rs.getString("reviewbody"));
			review.setSubmissiondate(rs.getDate("submissiondate"));
			review_list.add(review);
		}
		st.close();
		con.close();
		return review_list;
	}

	//管理者削除
	public boolean delete_admin(int adminId)throws Exception {
		int flag =1;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update admin set flag = ? where id = ?");
		st.setInt(1, flag);
		st.setInt(2,adminId);
		st.executeUpdate();
		st.close();
		con.close();
		return true;
	}
}