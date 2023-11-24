package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

//購入処理
public class PurchaseDAO extends DAO {
	public boolean insert(int company_id,int user_id,int coupon_id,LocalDateTime purchase_time,int purchase_price,String paymentmethod,String deladdress,String phone_number)
			throws Exception {
		Connection con=getConnection();
		//ステートメントごとの自動コミットをやめて，トランザクションを開始
		con.setAutoCommit(false);
		String formattedTime = purchase_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		PreparedStatement st=con.prepareStatement(
				"insert into product_cart(user_id,company_id,coupon_id,purchase_time,purchase_price,paymentmethod,deladdress,phone_number) "
				+ "values(?, ?, ?, ?, ?, ?, ?,?)");
		st.setInt(1, user_id);
		st.setInt(2, company_id);
		st.setInt(3, coupon_id);
		st.setString(4, formattedTime);
		st.setInt(5, purchase_price);
		st.setString(6, paymentmethod);
		st.setString(7, deladdress);
		st.setString(8, phone_number);
		int line=st.executeUpdate();
		st.close();

		if(line!=1){
			con.rollback();
			con.setAutoCommit(true);
			con.close();
			return false;
		}
		con.commit();
		con.setAutoCommit(true);
		con.close();
		return true;
	}

	}
