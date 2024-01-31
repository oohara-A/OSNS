package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Review;
import dao.ReviewDAO;
import tool.Action;
//レビュー編集
public class RevieweditAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッション接続
		HttpSession session=request.getSession();
		session.removeAttribute("user_review");
//		レビューId取得
		int review_id = Integer.parseInt(request.getParameter("review_id"));
//		ユーザーID取得
		int user_id = Integer.parseInt(request.getParameter("id"));
//		レヴュー評価
		int reviwe_star =Integer.parseInt(request.getParameter("ratings"));
//		本文
		String review_body = request.getParameter("reviews");
//		商品ID取得
		List<Product> pro = (List<Product>)session.getAttribute("product_detail");
		int pro_id =0;
		for(Product p:pro){
			pro_id = p.getId();
			break;
		}

		ReviewDAO dao = new ReviewDAO();
		boolean flag = dao.review_up(review_id, user_id,pro_id,review_body,reviwe_star);
		ReviewDAO dao2 = new ReviewDAO();
		List<Review> review = dao2.select(pro_id);
		session.setAttribute("user_review", review);
		return "product_detail.jsp";
	}

}
