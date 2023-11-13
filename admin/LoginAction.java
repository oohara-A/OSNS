package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;

public class LoginAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// リクエストパラメータからメールアドレスとパスワードとログイン日時を取得
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		// 指定したメールアドレスとパスワードの管理者をデータベースから検索する
		AdminDAO dao=new AdminDAO();
		Admin admin=dao.search(email, password);

		// メールアドレスとパスワードに合致する管理者が見つかった場合、属性名adminで登録する
		if (admin!=null) {
			session.setAttribute("admin", admin);
			// admin.jspをフォワード先に指定
			return "admin.jsp";
		}

		//エラーのアラートを表示


		// login.jspをフォワード先に指定
		return "login.jsp";
	}
}
