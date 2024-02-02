package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.ProductDAO;
import tool.Action;

public class CartdispAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		//sessionの情報を取得
		HttpSession session=request.getSession();
		//ユーザーid取得
		int user_id=Integer.parseInt(request.getParameter("id"));
		ProductDAO dao = new ProductDAO();
		List<Product> pro_cart=dao.disp_cart(user_id);
		if(pro_cart.isEmpty()){
			pro_cart = null;
		}
		session.setAttribute("cart", pro_cart);

		return "cart.jsp";
	}

}