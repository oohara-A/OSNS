package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import bean.User;
//ログイン操作など
public class UserDAO extends DAO {
//	ログイン時使用
	public User search(String user_name, String password,LocalDateTime login_date)
			throws Exception {
			User user=null;
			//データベース接続
			Connection con=getConnection();

			PreparedStatement st;
			//SQL文ログインしたユーザ情報があるかどうか
			st=con.prepareStatement(
				"select * from user where user_name=? and password=?");
			//？に代入
			st.setString(1, user_name);
			st.setString(2, password);
//			ログイン日時をログイン履歴テーブルに追加
			st=con.prepareStatement(
					"select * from user where user_name=? and password=?");
			//SQL文実行
			ResultSet rs=st.executeQuery();

			//ユーザのログイン情報を登録
			while (rs.next()) {
				user=new User();
				user.setId(rs.getInt("id"));
				user.setPassword(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
			}
			//データベース接続切断
			st.close();
			con.close();
			return user;
		}


//	新規登録時に使用
	public int insert(String account_name,String account_email,String account_password,LocalDateTime  adding_time)
			throws Exception{
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"insert into user(name,email,password) values(?, ?, ?)");
//		ユーザ名
		st.setString(1, account_name);
//		メールアドレス
		st.setString(2, account_email);
//		パスワード
		st.setString(3, account_password);

		 // LocalDateTimeを文字列に変換
        String formattedTime = adding_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        st.setString(4, formattedTime);

		//SQL文実行
		int line=st.executeUpdate();
		st.close();
		con.close();

		return line;
	}

//登録解除時使用
	public boolean update(int id,LocalDateTime adding_time )
		throws Exception{
		boolean flag =true;
		Connection con=getConnection();
		// LocalDateTimeを文字列に変換
        String formattedTime = adding_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
//削除フラグをtureにする
		PreparedStatement st=con.prepareStatement(
				"update user set flag = ?,where id = ?");
//		削除フラグをtureにする
		st.setBoolean(1, flag);
		st.setInt(2,id);
		st.executeUpdate();
		st.close();
		con.close();
	Connection con2=getConnection();
//	削除日時を追加
	PreparedStatement st2=con.prepareStatement(
				"insert into user(deleting_time) values(?) where id = ?");

		st2.setString(1, formattedTime);
		st2.setInt(1, id);
		st2.executeUpdate();
		st2.close();
		con2.close();
		return true;
	}


// プロフィール編集時使用
public boolean pro_update(int id,String user_name, String emali, String phone_number,String password, LocalDateTime update_time) throws Exception{
	Connection con=getConnection();
	// LocalDateTimeを文字列に変換
    String formattedTime = update_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
//   プロフィール編集処理
    PreparedStatement st=con.prepareStatement(
			"update user set id = ?, user_name = ?, emali = ?, password = ?,update_time = ?,where id = ?");
//    ユーザID
    st.setInt(1, id);
    st.setString(2, user_name);
    st.setString(3, emali);
    st.setString(4,password);
    st.setString(5, formattedTime);
    st.executeUpdate();
	st.close();
	con.close();
//電話番号アップデート
	Connection con2=getConnection();
	PreparedStatement st2 = con.prepareStatement(
		    "UPDATE address INNER JOIN user ON address.user_id = user.id SET address.phone_number = ? WHERE user.user_id = ?");
	st2.setString(1, phone_number);
	st2.setInt(2, id);
	st2.executeUpdate();
	st2.close();
	con2.close();

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

}
