package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;
import tool.Action;

//管理者削除
public class RemoveAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

        // ログインされている場合
        if (session.getAttribute("login_admin")!=null) {
        	int admin_id = 0;
    		Admin admin = new Admin();
    		admin =  (Admin) session.getAttribute("login_admin");
    		admin_id = admin.getId();
    		System.out.println("かんりしゃID"+admin_id);
        	AdminDAO dao=new AdminDAO();
        	boolean delete_admin=dao.delete_admin(admin_id);

        	session.setAttribute("adminDelete", delete_admin);

        	// delete_admin.jspをフォワード先に指定
        	return "../user/index.jsp";

        // ログインされていない場合
        } else {
        	// admin_login_error.jspをフォワード先に指定
        	return "admin_login_error.jsp";
        }
	}
}
