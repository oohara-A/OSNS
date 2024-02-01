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
//レビュー編集画面表示
public class ReviewoutAction extends Action{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("user");
		if(user == null){
			return "login_error.jsp";
		}
		int my_user = user.getId();
		@SuppressWarnings("unchecked")
		int user_id =Integer.parseInt(request.getParameter("edit_id"));
		if(my_user!= user_id){
			return "product_detail.jsp";
		}
//商品ID
		List<Product> pro = (List<Product>) session.getAttribute("product_detail");
		int pro_id =0;
		for(Product p : pro){
			 pro_id = p.getId();
			break;
		}
//データベース接続
		ReviewDAO dao = new ReviewDAO();
		List<Review> review = dao.select_userrev(user_id,pro_id);
		session.setAttribute("review_edit", review);
//		商品詳細ページ表示
		return "review_edit.jsp";
	}

}
