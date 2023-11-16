package dao;
import java.sql.Connection;

//DAO・・・SQL文などを実行したり実行結果を返したりする
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {
	//データソースを保存する変数ds
	static DataSource ds;
//データベース接続を取得するためのメソッド
	public Connection getConnection() throws Exception {
		if (ds==null) {
			//データソースの初期化ーーーーーーーーーーーーー。
			InitialContext ic=new InitialContext();
			ds=(DataSource)ic.lookup("java:/comp/env/jdbc/osns");
			//ーーーーーーーーーーーーーーーーーーーーーーー
		}
		return ds.getConnection();
	}
}
