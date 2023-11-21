package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Product;

public class ProductDAO extends DAO {
	//select関数カテゴリ商品を選択する
		public List<Product> selecategory(String category) throws Exception {
			List<Product> prduct=new ArrayList<>();

			Connection con=getConnection();
//カテゴリで商品情報を持ってくる
			PreparedStatement st=con.prepareStatement(
				"select * from product where category = ? ");
			ResultSet rs=st.executeQuery();

			while (rs.next()) {
				Product p=new Product();
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
//				カテゴリ
				p.setCategory(rs.getString("category"));
//				登録在庫数
				p.setRegiinvqua(rs.getInt("regiinvqua"));
//				商品概要
				p.setProduct_overview(rs.getString("product_overview"));
				prduct.add(p);
			}
			st.close();
			con.close();
//商品情報prduct
			return prduct;
		}

	//追加する関数
	public int insert(int id,String name,int price) throws Exception {
			Connection con=getConnection();

			PreparedStatement st=con.prepareStatement(
				"insert into product values(?, ?, ?)");
			st.setInt(1, id);
			st.setString(2, name);
			st.setInt(3, price);
			//SQL文実行
			int line=st.executeUpdate();

			st.close();
			con.close();
			return line;
		}


}
