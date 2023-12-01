package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;

public class ShowadminAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		//ログインされている場合
		if (session.getAttribute("login_admin")!=null)  {
	        // AdminDAOを使用して管理者一覧を取得
			AdminDAO dao=new AdminDAO();
			List<Admin> admin_list = dao.show_admin();

	        // 取得した管理者一覧をセッションに保存
	        session.setAttribute("adminList", admin_list);

	     // delete_admin.jspをフォワード先に指定
	        return "delete_admin.jsp";

	    //ログインされていない場合
		}else{
			// admin_login_error.jspをフォワード先に指定
			return "admin_login_error.jsp";
		}
	}
}
