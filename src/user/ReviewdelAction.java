package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ReviewDAO;
import tool.Action;
//レビュー削除
public class ReviewdelAction extends Action{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
//レビューId取得
		int review_id = Integer.parseInt(request.getParameter("review_id"));
		ReviewDAO dao = new ReviewDAO();
//	レビュー削除処理
		boolean flag = dao.review_del(review_id);
		return "product_detail.jsp";
	}

}
