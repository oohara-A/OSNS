package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.ReviewDAO;
import tool.Action;
//レビュー編集
public class RevieweditAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッション接続
		HttpSession session=request.getSession();
//		レビューId取得
		int review_id = Integer.parseInt(request.getParameter("review_id"));
//		ユーザー情報を取得
		List<User> user = (List<User>) session.getAttribute("user");

//		ユーザーID取得
		int user_id = 0;
		for(User u :user){
			user_id = u.getId();
			break;
		}

//		商品ID取得
		int pro_id = Integer.parseInt(request.getParameter("id"));
//		レビュー本文
		String reviewbody = request.getParameter("review_input_edit");
//		レビュー評価
		int rating = Integer.parseInt(request.getParameter("review_index_edit"));
		ReviewDAO dao = new ReviewDAO();
		boolean flag = dao.review_up(review_id, user_id,pro_id,reviewbody,rating);
		return "product_detail.jsp";
	}

}
