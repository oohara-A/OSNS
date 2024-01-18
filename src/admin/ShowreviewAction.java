package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Review;
import dao.AdminDAO;
import tool.Action;
//レビュー一覧表示処理
public class ShowreviewAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		// 企業名
		String user_id=request.getParameter("search");
		if (user_id==null) user_id="";

		// ログインされている場合
		if (session.getAttribute("login_admin")!=null){
            // DB接続処理
            AdminDAO dao = new AdminDAO();

            // サーチ実行処理
            List<Review> review_list = dao.show_review(user_id);

            session.setAttribute("reviewList", review_list);

            // copany_info.jspをフォワード先に指定
            return "review_info.jsp";

        // ログインされていない場合
        } else {
            // admin_login_error.jspをフォワード先に指定
            return "admin_login_error.jsp";
        }

	}

}
