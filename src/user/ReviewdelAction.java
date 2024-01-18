package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Review;
import bean.User;
import dao.ReviewDAO;
import tool.Action;
//レビュー削除
public class ReviewdelAction extends Action{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		session.removeAttribute("user_review");
		User user = (User) session.getAttribute("user");
		if(user == null){
			String messege = "ログインしてください";
			session.setAttribute("error", messege);
			return "login_error.jsp";
		}
//		 user_id = user.getId();
		 @SuppressWarnings("unchecked")
		List<Product> pro = (List<Product>) session.getAttribute("product_detail");
		 int pro_id = 0;
		 for(Product p : pro){
			 pro_id = p.getId();
			 break;
		 }
//レビューId取得
		int review_id = Integer.parseInt(request.getParameter("review_id"));
		ReviewDAO dao = new ReviewDAO();
		ReviewDAO dao2 = new ReviewDAO();

//	レビュー削除処理
		dao.review_del(review_id);
		List<Review> review = dao2.select( pro_id);
		session.setAttribute("user_review", review);
		return "product_detail.jsp";
	}

}
