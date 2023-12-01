package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;

public class RemoveAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

        int adminId = Integer.parseInt(request.getParameter("adminId"));

        // ログインされている場合
        if (session.getAttribute("login_admin")!=null) {
        	AdminDAO dao=new AdminDAO();
        	boolean delete_admin=dao.delete_admin(adminId);

        	session.setAttribute("adminDelete", delete_admin);

        	// delete_admin.jspをフォワード先に指定
        	return "delete_admin.jsp";

        // ログインされていない場合
        } else {
        	// admin_login_error.jspをフォワード先に指定
        	return "admin_login_error.jsp";
        }
	}
}
