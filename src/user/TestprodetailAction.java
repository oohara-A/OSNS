package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Review;
import bean.Test_product;
import dao.ProductDAO;
import dao.ReviewDAO;
import tool.Action;

public class TestprodetailAction extends Action  {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
		HttpSession session=request.getSession();
		session.removeAttribute("user_review");
		session.removeAttribute("product_detail");

//		 user_id = user.getId();

		//商品のID取得
		int pro_id=Integer.parseInt(request.getParameter("id"));
		ProductDAO dao = new ProductDAO();
		ReviewDAO dao2 = new ReviewDAO();

		List<Test_product> test_product=dao.testpro_selectId(pro_id);
		List<Review> review = dao2.select(pro_id);
		//セッションにlist属性で登録
		session.setAttribute("test_detail",test_product);
		System.out.println("test_detailセッションに登録しました");
		if(review.isEmpty()){
			System.out.print("testProdetailAction not set");
			session.removeAttribute("user_review");
			return "testpro_ditail.jsp";

		}
		session.setAttribute("user_review",review);
		System.out.print("TestprodetailAction");
	return "testpro_ditail.jsp";
}


}
