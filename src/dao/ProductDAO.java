package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Pro_image;
import bean.Product;
import bean.Product_cart;

public class ProductDAO extends DAO {
//	購入する商品の情報を持ってる関数
	public List<Product> selectId(int pro_id)throws Exception{
		List<Product> prduct_detail=new ArrayList<>();
		Connection con=getConnection();
//商品情報を持ってくる
		PreparedStatement st=con.prepareStatement(
				"select * from PRODUCT  inner join PRO_IMAGE on product.id = pro_image.product_id where product.id = ?");
		st.setInt(1, pro_id);
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Pro_image p=new Pro_image();
//			商品ID
			p.setId(rs.getInt("id"));
//			企業ID
			p.setCompany_id(rs.getInt("company_id"));
//			本商品ID
			p.setOriginal_products_id(rs.getInt("original_products_id"));
//			商品カテゴリID
			p.setProduct_category_id(rs.getInt("product_category_id"));
//			商品名
			p.setProduct_name(rs.getString("product_name"));
//			単価
			p.setUnit_price(rs.getInt("unit_price"));
//			商品説明
			p.setProduct_description(rs.getString("product_description"));
//			登録在庫数
			p.setRegiinvqua(rs.getInt("regiinvqua"));
//			商品概要
			p.setProduct_overview(rs.getString("product_overview"));
//			ファイルネーム
			p.setImage_filename(rs.getString("image_filename"));
			prduct_detail.add(p);

		}

		st.close();
		con.close();
//商品情報prduct_detail
		return prduct_detail;
	}

//	select関数カテゴリ商品を選択する(jsp側で商品を表示する際に使用)
		public List<Product> selecategory(String category) throws Exception {
			List<Product> prduct=new ArrayList<>();

			Connection con=getConnection();
			//カテゴリで商品情報を持ってくる
			PreparedStatement st=con.prepareStatement(
				"select * from PRODUCT  inner join PRO_IMAGE on product.id = pro_image.product_id inner join product_category on product.id = product_category.product_id  where PRODUCT_CATEGORY.CATEGORY_NAME = ?");
				st.setString(1, category);
			ResultSet rs=st.executeQuery();

			while (rs.next()) {
				Pro_image p=new Pro_image();
//				商品ID
				p.setId(rs.getInt("id"));
//				企業ID
				p.setCompany_id(rs.getInt("company_id"));
//				本商品ID
				p.setOriginal_products_id(rs.getInt("original_products_id"));
//				商品カテゴリID
				p.setProduct_category_id(rs.getInt("product_category_id"));
//				商品名
				p.setProduct_name(rs.getString("product_name"));
//				単価
				p.setUnit_price(rs.getInt("unit_price"));
//				商品説明
				p.setProduct_description(rs.getString("product_description"));
//				登録在庫数
				p.setRegiinvqua(rs.getInt("regiinvqua"));
//				商品概要
				p.setProduct_overview(rs.getString("product_overview"));
//				ファイルネーム
				p.setImage_filename(rs.getString("image_filename"));
				prduct.add(p);
			}
			st.close();
			con.close();
//商品情報prduct
			return prduct;
		}

//カートに追加する関数
		public List<Product> insert_cart(int user_id,int product_id,int company_id,int order_count ,Date adding_time) throws Exception {
			Connection con=getConnection();
			List<Product> prduct=new ArrayList<>();
			PreparedStatement st;
			int goukei = 0;

		 st=con.prepareStatement(
				"insert into product_cart(user_id,product_id,company_id,order_count,adding_time) values(?, ?, ?,?,?) ");
			st.setInt(1, user_id);
			st.setInt(2, product_id);
			st.setInt(3, company_id);
			st.setInt(4, order_count);
	        st.setDate(5, adding_time);

			//SQL文実行
			st.executeUpdate();
//			select文
			st = con.prepareStatement(
					"select * from PRODUCT  inner join PRO_IMAGE on product.id = pro_image.product_id inner join PRODUCT_CART on PRODUCT_CART.product_id = product.id where PRODUCT_CART.USER_ID = ?");
			st.setInt(1, user_id);

			ResultSet rs=st.executeQuery();

			while (rs.next()) {
				Product_cart p=new Product_cart();
//				商品ID
				p.setId(rs.getInt("id"));
//				企業ID
				p.setCompany_id(rs.getInt("company_id"));
//				本商品ID
				p.setOriginal_products_id(rs.getInt("original_products_id"));
//				商品カテゴリID
				p.setProduct_category_id(rs.getInt("product_category_id"));
//				商品名
				p.setProduct_name(rs.getString("product_name"));
//				単価
				p.setUnit_price(rs.getInt("unit_price"));
//				商品説明
				p.setProduct_description(rs.getString("product_description"));
//				登録在庫数
				p.setRegiinvqua(rs.getInt("regiinvqua"));
//				商品概要
				p.setProduct_overview(rs.getString("product_overview"));
//				ファイルネーム
				p.setFile_name(rs.getString("image_filename"));
//				個数
				p.setOrder_count(rs.getInt("order_count"));
//				カートない合計

				prduct.add(p);
			}
//			カート内の情報を入れる
			st.close();
			con.close();
			return prduct;
		}
//カート削除する関数
		public boolean del_cart(int product_id,Date adding_time)throws Exception{
			boolean flag =true;
			PreparedStatement st;
			Connection con=getConnection();
	         st=con.prepareStatement(
					"insert into product_cart(deleting_time) values(?) where product_id =?");
//	        削除日時
	        st.setDate(1, adding_time);
//	        商品ID
			st.setInt(2, product_id);
			//SQL文実行
			int line=st.executeUpdate();

//			削除フラグをtureにする
			 st=con.prepareStatement(
					"update product_cart set flag = ?,where product_id = ?");
			st.setBoolean(1, flag);
			st.setInt(2,product_id);
			st.executeUpdate();
			st.close();
			con.close();
			return true;

		}

	//サーチする関数
	public List<Product> search(String keyword) throws Exception {
		List<Product> product=new ArrayList<>();
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
			"select * from PRODUCT  inner join PRO_IMAGE on product.id = pro_image.product_id where product_name like ?");
		//検索キーワードを代入
		st.setString(1, "%"+keyword+"%");
		//SQL文実行
		ResultSet rs=st.executeQuery();
		//商品を登録していく
		while (rs.next()) {
			Pro_image p=new Pro_image();
//			商品ID
			p.setId(rs.getInt("id"));
//			企業ID
			p.setCompany_id(rs.getInt("company_id"));
//			本商品ID
			p.setOriginal_products_id(rs.getInt("original_products_id"));
//			商品カテゴリID
			p.setProduct_category_id(rs.getInt("product_category_id"));
//			商品名
			p.setProduct_name(rs.getString("product_name"));
//			単価
			p.setUnit_price(rs.getInt("unit_price"));
//			商品説明
			p.setProduct_description(rs.getString("product_description"));
//			登録在庫数
			p.setRegiinvqua(rs.getInt("regiinvqua"));
//			商品概要
			p.setProduct_overview(rs.getString("product_overview"));
//			ファイルネーム
			p.setImage_filename(rs.getString("image_filename"));
			product.add(p);
		}
		//データベース接続切断
		st.close();
		con.close();

		return product;
	}



}
