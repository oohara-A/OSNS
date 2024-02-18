package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Product;
import bean.Product_cart;
import bean.Purchase_history;

//購入処理
public class PurchaseDAO extends DAO {
	public boolean insert(ArrayList<Integer> comp_id,int user_id,String coupon_code,Date purchase_time,ArrayList<Integer> pro_id, String addre, ArrayList<Integer> cart_id, ArrayList<Integer> pro_count)
			throws Exception {
		Connection con=getConnection();

		System.out.println("purchaseDao");
		PreparedStatement st;
		PreparedStatement st2;
		PreparedStatement st3;
		PreparedStatement st4;
		ResultSet rs = null;
        ResultSet rs2 = null;
        ResultSet rs3 = null;
		//ステートメントごとの自動コミットをやめて，トランザクションを開始
		int pronum = 0;
		pronum = pro_id.size();

			 st=con.prepareStatement(
					"insert into purchase_history(product_id,company_id,user_id,COUPON_ID,purchase_time,purchase_price,paymentmethod,deladdress,count) "
					+ "values(?,?,?,?,?,?,?,?,?)");
			 for(int i = 0; i < pronum; i++ ){
				 System.out.println(pro_id.get(i));
				 st.setInt(1, pro_id.get(i));
				 st.setInt(2, comp_id.get(i));
				 st.setInt(3, user_id);
				 st.setString(4, coupon_code);
				 st.setDate(5,purchase_time);
				 st.setInt(6, 1000);
				 st.setString(7, "購入");
				 st.setString(8, addre);
				 st.setInt(9, pro_count.get(i));
				 int line=st.executeUpdate();
			 	}
			 int cart_Id = 0;
				 cart_Id = cart_id.size();
//			購入した商品をカートから削除
	         st=con.prepareStatement(
					"update product_cart set deleting_time=?,DELETION_FLAG = ? where CART_ID =?");
	        for(int i = 0; i < cart_Id; i++){
	//	        削除日時
		        st.setDate(1, purchase_time);
		        st.setInt(2, 1);
	//	        カートID
				st.setInt(3, cart_id.get(i));
				st.executeUpdate();
	         }


	         st4 = con.prepareStatement("select * from product where id = ?");
	         st2= con.prepareStatement("select * from PRODUCT_CART where user_id = ? and product_id = ?");
	         st3 = con.prepareStatement("update product set  REGIINVQUA = ? where id = ?");
	         for( int id:pro_id){
	        	 st4.setInt(1, id);
	       //SQL文実行
		 	rs=st4.executeQuery();

		 	st2.setInt(1, user_id);
		 	st2.setInt(2, id);
		 	rs2=st2.executeQuery();
		 		 ArrayList<Product> regi = new ArrayList<>();
		 		 int regi_num = 0;
		 		int num = 0;
//		         商品の在庫を持ってくる
		         while (rs.next()) {
		 			Product pro=new Product();
		 			pro.setRegiinvqua(rs.getInt("regiinvqua"));
		 			regi_num = pro.getRegiinvqua();
		         }
//		         カートの数量を持ってくる
		         int count = 0;
		         while (rs2.next()) {
			 			Product_cart pro_cart = new Product_cart();
			 			pro_cart.setOrder_count(rs2.getInt("order_count"));
			 			count = pro_cart.getOrder_count();
			         }
//		         在庫をカウント分減らす
		         regi_num-=count;
		         st3.setInt(1, regi_num);
		         st3.setInt(2, id);
		         st3.executeUpdate();

	         }
			st.close();
			st2.close();
			st3.close();
			con.close();
		return true;
	}

//	購入履歴の情報を持ってくる
public List<Purchase_history> selectPurchase(int user_id)throws Exception{
	List<Purchase_history> purchase_his =  new ArrayList<>();
	Connection con=getConnection();
	//商品情報を持ってくる
	PreparedStatement st=con.prepareStatement(
		"select * from purchase_history inner join product on purchase_history.product_id = product.id inner join pro_image on pro_image.product_id = product.id  where user_id = ? and CANCEL_FLAG = 0 ");
		st.setInt(1, user_id);
	ResultSet rs=st.executeQuery();
	while (rs.next()) {
		Purchase_history p=new Purchase_history();
		p.setId(rs.getInt("id"));
		p.setUser_id(rs.getInt("user_id"));
		p.setProduct_id(rs.getInt("product_id"));
		System.out.println("購入処理アクション"+"商品ID"+rs.getInt("product_id"));
		p.setProduct_name(rs.getString("product_name"));
		p.setCompany_id(rs.getInt("company_id"));
		p.setCoupon_id(rs.getString("coupon_id"));
		p.setPurchase_time(rs.getDate("purchase_time"));
		p.setPurchase_price(rs.getInt("purchase_price"));
		p.setPaymentmethod(rs.getString("paymentmethod"));
		p.setDeladdress(rs.getString("deladdress"));
		p.setPhone_number(rs.getString("phone_number"));
		p.setCount(rs.getInt("count"));
		p.setImage_filename(rs.getString("image_filename"));
		purchase_his.add(p);
	}
	st.close();
	con.close();
	return purchase_his;

}
//購入履歴の情報を持ってくる
public List<Purchase_history> selectComPurchase(int com_id)throws Exception{
List<Purchase_history> purchase_his =  new ArrayList<>();
Connection con=getConnection();
//商品情報を持ってくる
PreparedStatement st=con.prepareStatement(
	"select * from purchase_history inner join product on purchase_history.product_id = product.id inner join pro_image on pro_image.product_id = product.id inner join USER on user.id = purchase_history.user_id  where purchase_history.COMPANY_ID = ? and CANCEL_FLAG = 0 ");
	st.setInt(1, com_id);
ResultSet rs=st.executeQuery();
while (rs.next()) {
	Purchase_history p=new Purchase_history();
	p.setId(rs.getInt("id"));
	p.setUser_name(rs.getString("user_name"));
	p.setUser_id(rs.getInt("user_id"));
	p.setProduct_id(rs.getInt("product_id"));
	System.out.println("購入処理アクション"+"商品ID"+rs.getInt("product_id"));
	p.setProduct_name(rs.getString("product_name"));
	p.setCompany_id(rs.getInt("company_id"));
	p.setCoupon_id(rs.getString("coupon_id"));
	p.setPurchase_time(rs.getDate("purchase_time"));
	p.setPurchase_price(rs.getInt("purchase_price"));
	p.setPaymentmethod(rs.getString("paymentmethod"));
	p.setDeladdress(rs.getString("deladdress"));
	p.setPhone_number(rs.getString("phone_number"));
	p.setCount(rs.getInt("count"));
	p.setImage_filename(rs.getString("image_filename"));
	purchase_his.add(p);
}
st.close();
con.close();
return purchase_his;

}

//購入履歴ページに必要な情報を持ってくる
public Purchase_history selctProPurchase(int product_id)throws Exception{
	List<Purchase_history> purchase_his = (List<Purchase_history>) new Purchase_history();
	Connection con=getConnection();
	Purchase_history pro_purchase=null;
	//商品情報を持ってくる
	PreparedStatement st=con.prepareStatement(
		"select * from product INNER JOIN purchase_history on purchase_history.product_id = product.id where product.id =?  ");
	st.setInt(1, product_id);
	//SQL文実行
	ResultSet rs=st.executeQuery();
	while (rs.next()) {
		pro_purchase = new Purchase_history();
//		購入履歴ID
		pro_purchase.setId(rs.getInt("id"));
//		商品名
		pro_purchase.setProduct_name(rs.getString("product_name"));
//		購入金額
		pro_purchase.setUnit_price(rs.getInt("unit_price"));
//		商品の単価
		pro_purchase.setPurchase_price(rs.getInt("purchase_price"));
//		配送住所
		pro_purchase.setDeladdress(rs.getString("deladdress"));
//		クーポンId
		pro_purchase.setCoupon_id(rs.getString("coupon_id"));
	}
	//データベース接続切断
	st.close();
	con.close();
	return pro_purchase;
}

//購入キャンセル時に使用
public boolean updatePurchase(int log_number ,Date cancel_time) throws Exception {
	int flag = 1;
	Connection con=getConnection();
	PreparedStatement st = con.prepareStatement("update purchase_history set CANCEL_FLAG = ?, cancel_time = ? where id = ?");
	st.setInt(1, flag);
//	キャンセル日時
	st.setDate(2, cancel_time);
//	注文履歴id
	st.setInt(3,log_number);
	st.executeUpdate();
	st.close();
	con.close();
	return true;

}
	}























