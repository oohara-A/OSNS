package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.AdminDAO;

public class ShowuserAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// ユーザ名
		String user_name=request.getParameter("user_name");
		if (user_name==null) user_name="";

		// ログインされている場合
		if (session.getAttribute("login_admin")!=null){
			// DB接続処理
            AdminDAO dao = new AdminDAO();

            // サーチ実行処理
            List<User> user_list = dao.show_user(user_name);

            session.setAttribute("userList", user_list);

            // admin_manage_user.jspをフォワード先に指定
            return "admin_manage_user.jsp";

        // ログインされていない場合
        } else {
        	// admin_login_error.jspをフォワード先に指定
            return "admin_login_error.jsp";
        }
	}
}
