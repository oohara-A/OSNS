package user;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	//セッションをインポート
		HttpSession session=request.getSession();
		//カートの商品のIDを取得
		int id=Integer.parseInt(request.getParameter("id"));
		//セッションの中の属性cartを取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
//		削除日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date date1 = java.sql.Date.valueOf(formattedDate);

		ProductDAO dao = new ProductDAO();
		boolean flag = dao.del_cart(id,date1);

		//カートの中の商品を消去
		for (Product_cart i : cart) {
			if (i.getCart_id()==id) {
				cart.remove(i);
				break;
			}
		}
		List<Product_cart> cart_num=(List<Product_cart>)session.getAttribute("cart");
		if(cart_num.isEmpty()){
			cart_num = null;
			session.setAttribute("cart", cart_num);
		}



		return "cart.jsp";
	}

}
