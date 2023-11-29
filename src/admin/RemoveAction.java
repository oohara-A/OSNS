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

        // ログインされているか
        if (session.getAttribute("login_admin")!=null) {
        	AdminDAO dao=new AdminDAO();
        	boolean delete_admin=dao.deleteadmin(adminId);

        	session.setAttribute("adminDelete", delete_admin);

        	// delete_admin.jspをフォワード先に指定
        	return "delete_admin.jsp";

        // ログインされていない場合
        } else {
        	//　エラーアラートの表示


        	// admin.jspをフォワード先に指定
        	return "admin.jsp";
        }
	}
}
