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

		// 指定したユーザ名とパスワードの顧客をデータベースから検索する
		UserDAO dao=new UserDAO();
		User user=dao.search(user_name, password);

		// ユーザ名とパスワードに合致する顧客が見つかった場合、属性名userで登録する
		if (user!=null) {
			session.setAttribute("user", user);
			// login-out.jspをフォワード先に指定
			return "gacha.jsp";
		}

		// login-error.jspをフォワード先に指定
		return "sign_up.jsp";
	}
}
