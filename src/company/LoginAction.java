package company;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import dao.CompanyDAO;

public class LoginAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// リクエストパラメータからメールアドレスとパスワードとログイン日時を取得
		String email=request.getParameter("email");

		String password=request.getParameter("password");

		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date login_date = java.sql.Date.valueOf(formattedDate);

		// 指定したメールアドレスとパスワードの企業をデータベースから検索する
		CompanyDAO dao=new CompanyDAO();
		Company company=dao.login(email, password,login_date);

		// メールアドレスとパスワードに合致する企業が見つかった場合、属性名login_companyで登録する
		if (company!=null) {
			session.setAttribute("login_company", company);
			// company_top_page.jspをフォワード先に指定
			return "company_top_page.jsp";
		}else{
			// com_login_error.jspをフォワード先に指定
			return "com_login_error.jsp";
		}
	}
}
