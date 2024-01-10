package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import bean.Address;
import bean.Coupon;
import bean.User;
//ログイン操作など
public class UserDAO extends DAO {
//	ログイン時使用

	public User search(String user_name, String password,Date login_date)
			throws Exception {
			User user=null;
			//データベース接続
			Connection con=getConnection();

			PreparedStatement st;
			//SQL文ログインしたユーザ情報があるかどうか
			st=con.prepareStatement(
				"select * from user where user_name=? and password=? and flag =0");
			//？に代入
			st.setString(1, user_name);
			st.setString(2, password);
			//SQL文実行
			ResultSet rs=st.executeQuery();

			//ユーザのログイン情報を登録
			int user_id = 0;
			while (rs.next()) {
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUser_name(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
				user.setEmail("email");
				user_id = rs.getInt("id");
			}

			if(user_id != 0){
	//			履歴にID登録
				//ログイン履歴
				st=con.prepareStatement(
						"insert into login_history(user_id,login_date) values(?,?)");
				//？に代入
				st.setInt(1, user_id);
				st.setDate(2, login_date);
				//SQL文実行
				st.executeUpdate();
			}
			//データベース接続切断
			st.close();
			con.close();

			return  user;
		}

//
////ログイン履歴
//public boolean insert_login(int user_id, Date login_date)throws Exception{
//	//データベース接続
//	Connection con=getConnection();
//	PreparedStatement st;
//	//SQLログイン履歴登録
//	st=con.prepareStatement(
//		"insert into login_history(login_date) values(?)");
//	st.setDate(1, login_date);
//	st.setInt(2, user_id);
//	st.executeUpdate();
//	st.close();
//	con.close();
//
//
//	return true;
//
//}


//	新規登録時に使用
	public int insert(String account_name,String account_email,String account_password,String user_name, Date  adding_time)
			throws Exception{
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"insert into user(name,email,password,user_name,adding_time) values(?, ?, ?,?,?)");
//		ユーザ名
		st.setString(1, account_name);
//		メールアドレス
		st.setString(2, account_email);
//		パスワード
		st.setString(3, account_password);
//		ユーザ名
		st.setString(4, user_name);
//		作成日時
        st.setDate(5, adding_time);

		//SQL文実行
		int line=st.executeUpdate();
		st.close();
		con.close();

		return line;
	}

//登録解除時使用
	public boolean update(int id,Date adding_time )
		throws Exception{
		boolean flag =true;
		Connection con=getConnection();
//削除フラグをtureにする
		PreparedStatement st=con.prepareStatement(
				"update user set flag = ?,deleting_time = ?where id = ?");
//		削除フラグをtureにする
		st.setBoolean(1, flag);
		st.setDate(2, adding_time);
		st.setInt(3,id);
		st.executeUpdate();
		st.close();
		con.close();
		return true;
	}


// プロフィール編集時使用
public boolean pro_update(int id,String user_name, String emali, String phone_number,String password, Date update_time) throws Exception{
	Connection con=getConnection();
//	ユーザー名変更
	if(user_name!=null){
	    PreparedStatement st=con.prepareStatement(
				"update user set  user_name = ? where id = ?");
		    st.setString(1, user_name);
		    st.setInt(2, id);
		    st.executeUpdate();
			st.close();
			con.close();
	}
	if(emali!=null){
	    PreparedStatement st=con.prepareStatement(
				"update user set  email = ? where id = ?");
		    st.setString(1, emali);
		    st.setInt(2, id);
		    st.executeUpdate();
			st.close();
			con.close();
	}
	if(phone_number!=null){
	    PreparedStatement st=con.prepareStatement(
				"update user set  phone_number = ? where id = ?");
		    st.setString(1, phone_number);
		    st.setInt(2, id);
		    st.executeUpdate();
			st.close();
			con.close();
	}
	if(password!=null){
	    PreparedStatement st=con.prepareStatement(
				"update user set  password = ? where id = ?");
		    st.setString(1, password);
		    st.setInt(2, id);
		    st.executeUpdate();
			st.close();
			con.close();
	}
//   プロフィール編集処理
//    ユーザID
//
//    st.setString(3, emali);
//    st.setString(4,password);
//    st.setDate(5, update_time);
//    st.executeUpdate();
//	st.close();
//	con.close();
//電話番号アップデート
//	Connection con2=getConnection();
//	PreparedStatement st2 = con.prepareStatement(
//		    "UPDATE address INNER JOIN user ON address.user_id = user.id SET address.phone_number = ? WHERE user.user_id = ?");
//	st2.setString(1, phone_number);
//	st2.setInt(2, id);
//	st2.executeUpdate();
//	st2.close();
//	con2.close();

	return true;
}
//お気に入り登録時使用
public boolean favorite_insert(int id, int product_id)throws Exception{
	Connection con = getConnection();
	PreparedStatement st = con.prepareStatement("INSERT INTO favorite (user_id, product_id) SELECT ?, ? FROM user WHERE user.id = ?");	st.setInt(1, id);
	st.setInt(1, id);
	st.setInt(2, product_id);
	st.setInt(3, id);
	st.executeUpdate();
	st.close();
	con.close();
	return true;

}
//住所追加
public List<Address> AddressAdd(int id, String prefecture)throws Exception{
	Connection con = getConnection();
	List<Address> add=new ArrayList<>();
	PreparedStatement st;

	 st = con.prepareStatement("insert into address (user_id,address) values(?, ?)");
		st.setInt(1, id);
		st.setString(2, prefecture);
		st.executeUpdate();

		st =con.prepareStatement("select * from address where user_id = ?");
		st.setInt(1, id);
		//SQL文実行
		ResultSet rs=st.executeQuery();
		while (rs.next()) {
			Address address=new Address();
			address.setUser_id(rs.getInt("user_id"));
			address.setAddress(rs.getString("address"));
			add.add(address);
		}
		st.close();
		con.close();
	return add;
}

//クーポン追加
public List<Coupon> Coupon_Add(int user_id) throws Exception{
	// TODO 自動生成されたメソッド・スタブ
	Connection con = getConnection();
	PreparedStatement st;
	ResultSet rs;
	List<Coupon> coupon_list = new ArrayList<>();
	st = con.prepareStatement("select * from coupon");
	int count = 0;
	//SQL文実行
	 rs=st.executeQuery();
	while(rs.next()){
		Coupon coupon = new Coupon();
		coupon.setCoupon_id(rs.getInt("coupon_id"));
		coupon.setCoupon_name(rs.getString("coupon_name"));
		coupon.setProduct_id(rs.getInt("product_id"));
		coupon.setEffect(rs.getInt("effect"));
		coupon.setCoupon_code(rs.getString("coupon_code"));
		count+=1;
	}
	// 乱数生成器のインスタンス化
    Random random = new Random();
    // 1から10までの乱数を生成
    int randomNumber = random.nextInt(count) + 1;
    st = con.prepareStatement("select * from coupon where coupon_id = ?");
    st.setInt(1, randomNumber);
    rs = st.executeQuery();
//    取得したクーポン情報
    int coupon_id = 0;

    while(rs.next()){
		Coupon coupon = new Coupon();
		coupon.setCoupon_id(rs.getInt("coupon_id"));
		coupon_id = rs.getInt("coupon_id");
		coupon.setCoupon_name(rs.getString("coupon_name"));
		coupon.setProduct_id(rs.getInt("product_id"));
		coupon.setEffect(rs.getInt("effect"));
		coupon.setCoupon_code(rs.getString("coupon_code"));
		coupon_list.add(coupon);
    }

    st = con.prepareStatement("insert into have_coupon (coupon_id,user_id) values(?,?)");
    st.setInt(1, coupon_id);
	st.setInt(2, user_id);
	st.executeUpdate();
	st.close();
	con.close();
	return coupon_list;
}

}
