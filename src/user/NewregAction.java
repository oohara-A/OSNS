package user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import tool.Action;
//新規登録処理
public class NewregAction extends Action{
	@SuppressWarnings("unused")
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception {

		//セッションを使えるようにする
		HttpSession session=request.getSession();
		//ログイン名を取得
		String name=request.getParameter("account_name");
//		ユーザ名
		String user_name = request.getParameter("account_user");
//		メールアドレス
		String email = request.getParameter("account_email");
		//ログインパスワードを取得
		String password=request.getParameter("account_password");

//		登録日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date adding_time = java.sql.Date.valueOf(formattedDate);

		UserDAO dao=new UserDAO();
		int user = dao.insert(name, email, password,user_name,adding_time);
//		ログイン画面表示
		return "user_login.jsp";

}
}