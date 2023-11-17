package user;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import tool.Action;
//新規登録処理
public class NewregAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception {
//		変更
		//セッションを使えるようにする
		HttpSession session=request.getSession();
		//ログイン名を取得
		String name=request.getParameter("account_name");
//		メールアドレス
		String email = request.getParameter("account_email");
		//ログインパスワードを取得
		String password=request.getParameter("account_password");

//		ログイン日時
		LocalDateTime adding_time = LocalDateTime.now();
//新規登録
		UserDAO dao=new UserDAO();
		int user = dao.insert(name, email, password,adding_time);

		return "sign_up.jsp";

}
}
