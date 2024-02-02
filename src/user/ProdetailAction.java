package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
<<<<<<< HEAD
import bean.Review;
import dao.ProductDAO;
import dao.ReviewDAO;
=======
import dao.ProductDAO;
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
import tool.Action;

//商品詳細を表示させる
public class ProdetailAction extends Action {


	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
			HttpSession session=request.getSession();
<<<<<<< HEAD
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
=======
			//商品のID取得
			int pro_id=Integer.parseInt(request.getParameter("id"));
			ProductDAO dao = new ProductDAO();
			List<Product> product=dao.selectId(pro_id);
			//セッションにlist属性で登録
			session.setAttribute("product_detail", product);
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
			System.out.print("ProdetailAction");
		return "product_detail.jsp";
	}

}
