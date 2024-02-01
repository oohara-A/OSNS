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
import bean.Test_product;

public class CompanyDAO extends DAO{

	//ログイン
	public Company login(String email, String password, Date login_date)
		throws Exception {
		Company company=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;

		st=con.prepareStatement(
				"SELECT * FROM company where password = ? and email = ? and flag = 0");
		st.setString(1, password);
		st.setString(2, email);
		ResultSet rs=st.executeQuery();
		//企業のログイン情報を登録
		while (rs.next()) {
			company=new Company();
			company.setId(rs.getInt("id"));
			company.setCompany_name(rs.getString("company_name"));
			company.setPassword(rs.getString("password"));
			company.setEmail(rs.getString("email"));
		}
		//ログイン時の日時
		//SQL文を実行
		st=con.prepareStatement(
			"UPDATE company SET adding_time = ?");
		//?に代入
		st.setDate(1,login_date);
		//SQL文実行
		st.executeUpdate();
		//データベース接続切断
		st.close();
		con.close();
		return company;
	}

	//企業追加
	public Company register(String name, String company_name, String address, String email, String phone_number,String filename2, String password, Date add_date)
		throws Exception {
		Company company=null;

		Connection con=getConnection();

		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into company (name,company_name,address,email,phone_number,company_image,password,adding_time) values(?,?,?,?,?,?,?,?)");
		st.setString(1, name);
		st.setString(2, company_name);
		st.setString(3, address);
		st.setString(4, email);
		st.setString(5, phone_number);
		st.setString(6, password);
		st.setDate(7, add_date);
		st.executeUpdate();

		st.close();
		con.close();
		return company;
	}

	//企業削除
	public boolean deregister_company(int companyId,Date deleting_time)
		throws Exception {
		int flag =1;
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"update company set flag = ? ,deleting_time = ? where Id = ?");
		st.setInt(1, flag);
		st.setDate(2,deleting_time);
		st.setInt(3,companyId);
		st.executeUpdate();

		st.close();
		con.close();
		return true;
	}
//	企業情報の取得
	public Company select_comp(int id)
			throws Exception {
			Company company=new Company();

			Connection con=getConnection();

			// SQL文を実行
			PreparedStatement st;
			st=con.prepareStatement(
				"select * from company where id = ?");
			st.setInt(1, id);
			ResultSet rs=st.executeQuery();
			while (rs.next()){
				company.setId(rs.getInt("id"));
				company.setCompany_name(rs.getString("company_name"));
				company.setAddress(rs.getString("address"));
				company.setPassword(rs.getString("password"));
				company.setEmail(rs.getString("email"));
				company.setName(rs.getString("name"));
				company.setPhone_number(rs.getString("phone_number"));
			}

			st.close();
			con.close();
			return company;
		}

	//企業情報編集
	public Company edit_comp_info(int id,String name,String company_name,String address,String email,String phone_number,String password,Date update_date)
		throws Exception {
		Company company=null;
		System.out.println("企業編集実行");

		Connection con=getConnection();
		// SQL文を実行
		PreparedStatement st;
//		if(name!=null){
//		     st=con.prepareStatement(
//					"update company set  company_name = ? where id = ?");
//			    st.setString(1, name);
//			    st.setInt(2, id);
//			    st.executeUpdate();
//		}
		st=con.prepareStatement(
			"update company set name=?,company_name=?,address=?,email=?,phone_number=?,password=?,update_time=? where id = ?");
		st.setString(1, name);
		st.setString(2, company_name);
		st.setString(3, address);
		st.setString(4, email);
		st.setString(5, phone_number);
		st.setString(6, password);
		st.setDate(7, update_date);
		st.setInt(8, id);
		st.executeUpdate();

		st.close();
		con.close();
		return company;
		}

	// 商品追加
	public Product product_registration(String category_name,String product_name, int unit_price, Date add_date, String product_description,int regiinvqua, String filename2 )
		throws Exception {
		Product product=null;
		int  category_id = 0;
//		カテゴリの判定条件  食料品だったら１
		if (category_name.equals("genre1")) {
			category_id = 1;
		}else if (category_name.equals("genre2")){
			category_id = 2;
		//カテゴリで本を選択した場合
		if (category_name.equals("genre1")) {
			category_id = 1;
		//化粧品を選択した場合
		}else if (category_name.equals("genre2")){
			category_id = 2;
		//食料品を選択した場合
		}else if (category_name.equals("genre3")){
			category_id = 3;
		}
		String PRODUCT_OVERVIEW = "aaaaaaaaaa";
		int pro_id = 0;
		// 商品情報をテーブルに追加
		Connection con=getConnection();
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into product (product_category_id,product_name,unit_price,adding_time,product_description,regiinvqua,PRODUCT_OVERVIEW) values(?,?,?,?,?,?,?)") ;
		st.setInt(1, category_id);
		st.setString(2, product_name);
		st.setInt(3, unit_price);
		st.setDate(4, add_date);
		st.setString(5, product_description);
		st.setInt(6, regiinvqua);
		st.setString(7, PRODUCT_OVERVIEW);
		st.executeUpdate();

		//商品ID
		st=con.prepareStatement(
				"SELECT * FROM product where product_name = ?");
		st.setString(1, product_name);
		ResultSet rs=st.executeQuery();
		//商品Id取得
		while (rs.next()) {
			pro_id = rs.getInt("id");
		}
		System.out.println(pro_id);
		//商品画像をテーブルに追加
		st=con.prepareStatement(
				"insert into pro_image (product_id,image_filename) values(?,?)");
		st.setInt(1, pro_id);
		st.setString(2, filename2);
		st.executeUpdate();

		//カテゴリをテーブル追加
		st=con.prepareStatement(
				"insert into product_category (PRODUCT_CATEGORY_ID ,product_id,category_name) values(?,?,?)");
		st.setInt(1, category_id);
		st.setInt(2, pro_id);
		st.setString(3, category_name);
		st.executeUpdate();
		st.close();
		con.close();

		return product;
	}
		return product;
	}

	// 商品一覧
	public List<Product> product_list()
		throws Exception {
		List<Product> product_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
			"select * from product where flag = 0");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Product product=new Product();
			product.setId(rs.getInt("id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setUnit_price(rs.getInt("unit_price"));
			product.setRegiinvqua(rs.getInt("regiinvqua"));
			product.setAdding_time(rs.getDate("adding_time"));
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

//	// 商品編集
//	public Product product_edit(String product_name, int unit_price, int regiinvqua, String category_name, String product_description, Date update_date)
//		throws Exception {
//		Product product=null;
//
//		int pro_id = 0;
//		// 商品情報をテーブルに追加
//		Connection con=getConnection();
//		PreparedStatement st;
//		st=con.prepareStatement(
//			"update product set product_name=? and unit_price=? and regiinvqua=? and product_description=? and update_time=?");
//		st.setString(1, product_name);
//		st.setInt(2, unit_price);
//		st.setInt(3, regiinvqua);
//		st.setString(4, product_description);
//		st.setDate(5, update_date);
//		ResultSet rs=st.executeQuery();
//		st.close();
//		con.close();
//		//商品Id取得
//		pro_id = rs.getInt("id");
//
//		//商品画像をテーブルに追加
//		st=con.prepareStatement(
//				"update pro_image set product_id=? and image_filename=?");
//		st.setInt(1, pro_id);
//		st.setString(2, filename);
//		st.executeQuery();
//		st.close();
//		con.close();
//
//		//カテゴリをテーブル追加
//		st=con.prepareStatement(
//				"update product_category set product_id=? and category_name=?");
//		st.setInt(1, pro_id);
//		st.setString(2, category_name);
//		st.executeQuery();
//		st.close();
//		con.close();
//
//		return product;
//	}

//	// 試供品追加
	public Test_product testpro_registration(String testpro_name, int test_price, String filename2,int regiinvqua, String category_name, String product_description, Date add_date)
		throws Exception {
		Test_product test_product=null;

		int  category_id = 0;

		//カテゴリで本を選択した場合
		if (category_name.equals("genre1")) {
			category_id = 1;
		//化粧品を選択した場合
		}else if (category_name.equals("genre2")){
			category_id = 2;
		//食料品を選択した場合
		}else if (category_name.equals("genre3")){
			category_id = 3;
		}


		String PRODUCT_OVERVIEW = "abcdefg";

		int pro_id = 0;
		// 試供品情報をテーブルに追加
		Connection con=getConnection();
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into test_product (product_category_id,testpro_name,test_price,regiinvqua,product_description,adding_time,PRODUCT_OVERVIEW) values(?,?,?,?,?,?,?)") ;
		st.setInt(1, category_id);
		st.setString(2, testpro_name);
		st.setInt(3, test_price);
		st.setInt(4, regiinvqua);
		st.setString(5, product_description);
		st.setDate(6, add_date);
		st.setString(7, PRODUCT_OVERVIEW);
		st.executeUpdate();

		//商品ID
		st=con.prepareStatement(
				"SELECT * FROM test_product where testpro_name = ?");
		st.setString(1, testpro_name);
		ResultSet rs=st.executeQuery();
		//商品Id取得
		while (rs.next()) {
			pro_id = rs.getInt("id");
		}
		System.out.println(pro_id);
		//商品画像をテーブルに追加
		st=con.prepareStatement(
				"insert into testpro_image (product_id,image_filename) values(?,?)");
		st.setInt(1, pro_id);
		st.setString(2, filename2);
		st.executeUpdate();

		//カテゴリをテーブル追加
		st=con.prepareStatement(
				"insert into testpro_category (PRODUCT_CATEGORY_ID ,product_id,name) values(?,?,?)");
		st.setInt(1, category_id);
		st.setInt(2, pro_id);
		st.setString(3, category_name);
		st.executeUpdate();
		st.close();
		con.close();

		return test_product;
	}

//	// 試供品編集
//	public Test_product testpro_edit(String testpro_name, int test_price, int regiinvqua, String category_name, String product_description, String filename, Date update_date)
//		throws Exception {
//		Test_product test_product=null;
//
//		int pro_id = 0;
//		// 試供品情報をテーブルに追加
//		Connection con=getConnection();
//		PreparedStatement st;
//		st=con.prepareStatement(
//			"update test_product set testpro_name=? and test_price=? and regiinvqua=? and product_description=? and update_time=?");
//		st.setString(1, testpro_name);
//		st.setInt(2, test_price);
//		st.setInt(3, regiinvqua);
//		st.setString(4, product_description);
//		st.setDate(5, update_date);
//		ResultSet rs=st.executeQuery();
//		st.close();
//		con.close();
//		//商品Id取得
//		pro_id = rs.getInt("id");
//
//		//試供品画像をテーブルに追加
//		st=con.prepareStatement(
//				"update pro_image set product_id=? and image_filename=?");
//		st.setInt(1, pro_id);
//		st.setString(2, filename);
//		st.executeQuery();
//		st.close();
//		con.close();
//
//		//カテゴリをテーブル追加
//		st=con.prepareStatement(
//				"update product_category set product_id=? and category_name=?");
//		st.setInt(1, pro_id);
//		st.setString(2, category_name);
//		st.executeQuery();
//		st.close();
//		con.close();
//
//		return test_product;
//	}

	// クーポン発行
	public Coupon coupon_issuing_creation(String coupon_name, String coupon_code, int coupon_discount)
		throws Exception {
		Coupon coupon=null;

		Connection con=getConnection();
		// SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"insert into coupon (coupon_name,coupon_code,EFFECT) values(?,?,?)");
		st.setString(1, coupon_name);
		st.setString(2, coupon_code);
		st.setInt(3, coupon_discount);
		st.executeUpdate();

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
	public List<Coupon> coupon_list()
		throws Exception {
		List<Coupon> coupon_list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st;
		st=con.prepareStatement(
			"select * from coupon where flag = 0");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Coupon coupon=new Coupon();
			coupon.setCoupon_id(rs.getInt("coupon_id"));
			coupon.setCoupon_name(rs.getString("coupon_name"));
			coupon.setCoupon_code(rs.getString("coupon_code"));
			coupon.setEffect(rs.getInt("effect"));
			coupon_list.add(coupon);
		}
		st.close();
		con.close();
		return coupon_list;
	}
}