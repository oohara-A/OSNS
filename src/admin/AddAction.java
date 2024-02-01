package admin;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;
import tool.Action;

public class AddAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		//管理者名
		String admin_name=request.getParameter("admin_name");
		//メールアドレス
		String email=request.getParameter("admin_email");
		//パスワード
		String password=request.getParameter("admin_password");

		//追加日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date add_date = java.sql.Date.valueOf(formattedDate);

		AdminDAO dao=new AdminDAO();
		Admin admin=dao.add(admin_name, email, password, add_date);

		// 入力した情報に合致する管理者が見つからなかった場合、属性名adminで登録する
		if (admin==null) {
			session.setAttribute("admin", admin);
			// admin.jspをフォワード先に指定
			return "admin.jsp";
		}else{
			// admin_login_error.jspをフォワード先に指定
			return "admin_add_error.jsp";
		}
	}
}
