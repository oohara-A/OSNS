package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Review;
import dao.ProductDAO;
import dao.ReviewDAO;
import tool.Action;

//商品詳細を表示させる
public class ProdetailAction extends Action {


	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
			HttpSession session=request.getSession();
			session.removeAttribute("user_review");
//			 user_id = user.getId();
			//商品のID取得
			int pro_id=Integer.parseInt(request.getParameter("id"));
			ProductDAO dao = new ProductDAO();
			ReviewDAO dao2 = new ReviewDAO();

			List<Product> product=dao.selectId(pro_id);
			List<Review> review = dao2.select(pro_id);
//
			//セッションにlist属性で登録
			session.setAttribute("product_detail", product);
			if(review.isEmpty()){
				System.out.print("ProdetailAction not set");
				session.removeAttribute("user_review");
				return "product_detail.jsp";

			}
			session.setAttribute("user_review", review);
			System.out.print("ProdetailAction");
		return "product_detail.jsp";
	}

}
