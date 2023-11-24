package user;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product_cart;
import dao.ProductDAO;
import tool.Action;

//カート削除
public class CartdelAction extends Action {
public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
// カート内の商品のID取得
	int product_id = Integer.parseInt(request.getParameter("id"));
	//セッションをインポート
		HttpSession session=request.getSession();
		//カートの商品のIDを取得
		int id=Integer.parseInt(request.getParameter("id"));
		//セッションの中の属性cartを取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
//		削除する日時を取得
		LocalDateTime adding_time = LocalDateTime.now();
		ProductDAO dao = new ProductDAO();
		boolean flag = dao.del_cart(product_id,adding_time);

		//カートの中の商品を消去
		for (Product_cart i : cart) {
			if (i.getProduct().getId()==id) {
				cart.remove(i);
				break;
			}
		}


		return "user_cart.jsp";
	}

}
