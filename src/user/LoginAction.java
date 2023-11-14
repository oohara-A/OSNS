package user;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// リクエストパラメータからユーザ名とパスワードとログイン日時を取得
		String user_name=request.getParameter("user_name");
		String password=request.getParameter("password");
		LocalDateTime login_date = LocalDateTime.now();

		// 指定したユーザ名とパスワードのユーザをデータベースから検索する
		UserDAO dao=new UserDAO();
		User user=dao.search(user_name, password, login_date);

		// ユーザ名とパスワードに合致するユーザが見つかった場合、属性名userで登録する
		if (user!=null) {
			session.setAttribute("user", user);
			// gacha.jspをフォワード先に指定
			return "gacha.jsp";
		}

		// エラーのアラートを表示


		// login.jspをフォワード先に指定
		return "login.jsp";
	}
}
