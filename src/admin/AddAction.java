package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;

public class AddAction {
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

		AdminDAO dao=new AdminDAO();
		Admin admin=dao.insert(admin_name, email, password);

		//ログインされているか
		if (session.getAttribute("login_admin")!=null){
			// 管理者名とメールアドレスとパスワードに合致する管理者が見つからなかった場合、属性名add_adminで登録する
			if (admin==null) {
				session.setAttribute("add_admin", admin);
				// admin.jspをフォワード先に指定
				return "admin.jsp";
			}else{
				//エラーのアラートを表示


				// add_admin.jspをフォワード先に指定
				return "add_admin.jsp";
			}
		}else {
			//エラーのアラートを表示

			return "admin.jsp";
		}
	}
}
