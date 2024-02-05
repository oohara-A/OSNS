package dao;
import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {
	//データソースを保存する変数ds
	static DataSource ds;
//データベース接続を取得するためのメソッド
	public Connection getConnection() throws Exception {
		if (ds==null) {
			InitialContext ic=new InitialContext();
			ds=(DataSource)ic.lookup("java:/comp/env/jdbc/osns");
		}
//		↓デプロイ用
//		Class.forName("org.h2.Driver");
//		return DriverManager.getConnection("jdbc:h2:tcp://localhost/~/osns","sa","");
		return ds.getConnection();
	}
}
