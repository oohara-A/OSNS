package user;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import dao.CustomerDAO;

public class LoginAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// リクエストパラメータからユーザ名とパスワードとログイン日時を取得
		String login=request.getParameter("user_name");
		String password=request.getParameter("password");
		LocalDateTime login_date = LocalDateTime.now();

		// 指定したユーザ名とパスワードの顧客をデータベースから検索する
		CustomerDAO dao=new CustomerDAO();
		Customer customer=dao.search(user_name, password);

		// ユーザ名とパスワードに合致する顧客が見つかった場合、属性名customerで登録する
		if (customer!=null) {
			session.setAttribute("customer", customer);
			// login-out.jspをフォワード先に指定
			return "login-out.jsp";
		}

		// login-error.jspをフォワード先に指定
		return "login-error.jsp";
	}
}
