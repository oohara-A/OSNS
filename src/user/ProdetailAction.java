package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.ProductDAO;
import tool.Action;

//商品詳細を表示させる
public class ProdetailAction extends Action {


	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
			HttpSession session=request.getSession();
			//商品のID取得
			int pro_id=Integer.parseInt(request.getParameter("id"));
			ProductDAO dao = new ProductDAO();
			List<Product> product=dao.selectId(pro_id);
			//セッションにlist属性で登録
			session.setAttribute("product_detail", product);
			System.out.print("ProdetailAction");
		return "product_detail.jsp";
	}

}
