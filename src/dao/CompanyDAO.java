package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Company;
import bean.Coupon;
import bean.Product;

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
		st.executeQuery();

		st.close();
		con.close();


		//ログイン時の日時
		Connection con2=getConnection();

		// SQL文を実行
		PreparedStatement st2;
		st2=con2.prepareStatement(
			"update company set update_time=?");
		st2.setDate(1,login_date );
		st2.executeQuery();

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
		st.executeQuery();

		st.close();
		con.close();
		return company;
	}

	//企業削除
	public boolean delete_company(int companyId)
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

	//企業情報編集
	public Company edit_comp_info(String name,String company_name,String address,String email,String phone_number,String password)
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
		st.executeQuery();

		st.close();
		con.close();
		return company;
	}

	// 商品追加
	public Product product_registration(String product_name, int unit_price, int regiinvqua, String category_name, String product_description, String filename, Date add_date)
		throws Exception {
		Product product=null;

		int pro_id = 0;
		// 商品情報をテーブルに追加
		Connection con=getConnection();
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into product product_name=? and unit_price=? and regiinvqua=? and product_description=? and adding_time=?");
		st.setString(1, product_name);
		st.setInt(2, unit_price);
		st.setInt(3, regiinvqua);
		st.setString(4, product_description);
		st.setDate(5, add_date);
		ResultSet rs=st.executeQuery();
		st.close();
		con.close();
		//商品Id取得
		pro_id = rs.getInt("id");

		//商品画像をテーブルに追加
		Connection con2=getConnection();
		PreparedStatement st2;
		st2=con2.prepareStatement(
				"insert into pro_image product_id=? and image_filename=?");
		st2.setInt(1, pro_id);
		st2.setString(2, filename);
		st2.executeQuery();
		st2.close();
		con2.close();

		//カテゴリをテーブル追加
		Connection con3=getConnection();
		PreparedStatement st3;
		st3=con3.prepareStatement(
				"insert into product_category product_id=? and category_name=?");
		st3.setInt(1, pro_id);
		st3.setString(2, category_name);
		st3.executeQuery();
		st3.close();
		con3.close();

		return product;
	}

	// 商品一覧
	public List<Product> product_list(String product_name,int unit_price, int regiinvqua)
		throws Exception {
		List<Product> product_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from product where product_name like ? and unit_price like ? and regiinvqua like ?");
		st.setString(1, "%"+product_name+"%");
		st.setInt(2, unit_price);
		st.setInt(3, regiinvqua);
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Product product=new Product();
			product.setId(rs.getInt("id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setUnit_price(rs.getInt("unit_price"));
			product.setRegiinvqua(rs.getInt("regiinvqua"));
			product.setUpdate_time(rs.getDate("update_date"));
			product_list.add(product);
		}
		st.close();
		con.close();
		return product_list;
	}

	//商品削除
	public boolean product_cancellation(int id)
		throws Exception {
		boolean flag =true;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update product set flag = ?,where id = ?");
		st.setBoolean(1, flag);
		st.setInt(2,id);

		st.close();
		con.close();
		return true;
	}

	// 試供品追加
	public Test_product sample_registration(String testpro_name, int test_price, int regiinvqua, String category_name, String product_description, String filename, Date add_date)
		throws Exception {
		Test_product test_product=null;

		int pro_id = 0;
		// 試供品情報をテーブルに追加
		Connection con=getConnection();
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into test_product testpro_name=? and test_price=? and regiinvqua=? and product_description=? and adding_time=?");
		st.setString(1, testpro_name);
		st.setInt(2, test_price);
		st.setInt(3, regiinvqua);
		st.setString(4, product_description);
		st.setDate(5, add_date);
		ResultSet rs=st.executeQuery();
		st.close();
		con.close();
		//商品Id取得
		pro_id = rs.getInt("id");

		//試供品画像をテーブルに追加
		Connection con2=getConnection();
		PreparedStatement st2;
		st2=con2.prepareStatement(
				"insert into pro_image product_id=? and image_filename=?");
		st2.setInt(1, pro_id);
		st2.setString(2, filename);
		st2.executeQuery();
		st2.close();
		con2.close();

		//カテゴリをテーブル追加
		Connection con3=getConnection();
		PreparedStatement st3;
		st3=con3.prepareStatement(
				"insert into product_category product_id=? and category_name=?");
		st3.setInt(1, pro_id);
		st3.setString(2, category_name);
		st3.executeQuery();
		st3.close();
		con3.close();

		return test_product;
	}

	// クーポン発行
	public Coupon coupon_issuing_creation(String coupon_name, String coupon_code, int effect)
		throws Exception {
		Coupon coupon=null;

		Connection con=getConnection();
		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into coupon coupon_name=? and coupon_code=? and effect=?");
		st.setString(1, coupon_name);
		st.setString(2, coupon_code);
		st.setInt(3, effect);st.executeQuery();

		st.close();
		con.close();
		return coupon;
	}

	//クーポン削除
	public boolean delete_coupon(int coupon_id)
		throws Exception {
		boolean flag =true;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update coupon set flag = ?,where coupon_id = ?");
		st.setBoolean(1, flag);
		st.setInt(2,coupon_id);

		st.close();
		con.close();
		return true;
	}

	// クーポン一覧
	public List<Coupon> coupon_list(String coupon_name)
		throws Exception {
		List<Coupon> coupon_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from coupon where coupon_name like ?");
		st.setString(1, "%"+coupon_name+"%");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Coupon coupon=new Coupon();
			coupon.setCoupon_id(rs.getInt("coupon_id"));
			coupon.setCoupon_name(rs.getString("coupon_name"));
			coupon_list.add(coupon);
		}
		st.close();
		con.close();
		return coupon_list;
	}
}
