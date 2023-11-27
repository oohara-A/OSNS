package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Review;
import bean.User;
import dao.ReviewDAO;
import tool.Action;
//レビュー画面表示
public class ReviewoutAction extends Action{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		@SuppressWarnings("unchecked")
		List<User> user = (List<User>) session.getAttribute("user");
//		ユーザーID取得
		int user_id = 0;
		for(User u :user){
			user_id = u.getId();
			break;
		}
//商品ID取得
		int pro_id = Integer.parseInt(request.getParameter("id"));
//データベース接続
		ReviewDAO dao = new ReviewDAO();
		Review review = dao.select(user_id, pro_id);
		session.setAttribute("review", review);
		return "review.jsp";
	}

}
