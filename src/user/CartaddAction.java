package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Product_cart;
import bean.User;
import tool.Action;
//商品のカート追加
public class CartaddAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		//product.jspで追加するを押した商品のid取得
		int id=Integer.parseInt(request.getParameter("id"));
		//セッションからcartの属性の情報を取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
		List<Product> product=(List<Product>)session.getAttribute("product");
		List<User> user =(List<User>) session.getAttribute("user");

//		カートテーブルにinsert






		//cartの中身がnullだったらsetAttributeで属性名cartを設定する
		if (cart==null) {
			cart=new ArrayList<Product_cart>();
			session.setAttribute("cart", cart);
		}
		//cartの中の情報をProduct_cartにセットしていく
		//返り値はcart.jsp
		for (Product_cart i : cart) {
			if (i.getProduct().getId()==id) {
				i.setOrder_count(i.getOrder_count()+1);
				return "user_cart.jsp";
			}
		}

	//cartの中の情報をItemにセットしていく
//		商品IDと一緒かどうかの判定
		for (Product p : product) {
			//productのidと同じ場合の処理
			if (p.getId()==id) {
				Product_cart i =new Product_cart();
//				prodct型の変数
				i.setProduct(p);
				i.setId(id);
				cart.add(i);
			}
		}
		return "user_cart.jsp";
	}
}
