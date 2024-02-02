package admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;
import tool.Action;

public class LoginAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// リクエストパラメータからメールアドレスとパスワードとログイン日時を取得
		String email=request.getParameter("inq_name");
		System.out.println(email);
		String password=request.getParameter("inq_com_name");
		System.out.println(password);

		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date login_date = java.sql.Date.valueOf(formattedDate);

		// 指定したメールアドレスとパスワードの管理者をデータベースから検索する
		AdminDAO dao=new AdminDAO();
		List<Admin> admin=dao.login(email, password,login_date);

		// メールアドレスとパスワードに合致する管理者が見つかった場合、属性名login_adminで登録する
		if (admin!=null) {
			session.setAttribute("login_admin", admin);
			// admin.jspをフォワード先に指定
			return "admin.jsp";
		}else{
			// admin_login_error.jspをフォワード先に指定
			return "admin_login_error.jsp";
		}
	}
}
