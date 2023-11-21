package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;

public class RemoveAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

        String adminId = request.getParameter("adminId"); // 削除対象の管理者ID

        // ログインされているか
        if (session.getAttribute("login_admin")!=null) {
        	AdminDAO dao=new AdminDAO();
        	Admin admin=dao.update("adminId");

            if () {
            	session.setAttribute("delete_admin", admin);
                return "delete_admin.jsp"; // 削除成功時に管理者一覧ページにリダイレクト
            } else {
            	// エラーアラートの表示

            	return "delete_admin.jsp";

            }
        } else {
        	//　エラーアラートの表示

        	return "admin.jsp";
        }
	}
}
