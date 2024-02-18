package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Purchase_history;
import dao.AdminDAO;
import tool.Action;

public class Purchaser_infoAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		// ログインされている場合
		if (session.getAttribute("login_admin")!=null){
			// DB接続処理
            AdminDAO dao = new AdminDAO();

            // サーチ実行処理
            List<Purchase_history> user_list = dao.purchaser_info();

            session.setAttribute("purchaser_info", user_list);

            // admin_manage_user.jspをフォワード先に指定
            return "purchaser_info.jsp";
        // ログインされていない場合
        } else {
        	// admin_login_error.jspをフォワード先に指定
            return "admin_login_error.jsp";
        }
	}
}
