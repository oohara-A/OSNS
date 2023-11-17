package admin;

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

	        // AdminDAOを使用して管理者一覧を取得
	        AdminDAO adminDAO = new AdminDAO();
	        List<Admin> adminList = adminDAO.getAllAdmins(); // すべての管理者のリストを取得するメソッドを呼び出す

	        // 取得した管理者一覧をセッションに保存
	        session.setAttribute("adminList", adminList);

	        return "delete_admin.jsp"; // 管理者一覧を表示するJSP名を返す

		}
}
