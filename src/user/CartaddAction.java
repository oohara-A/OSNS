package user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Product_cart;
import bean.User;
import dao.ProductDAO;
import tool.Action;
//商品のカート追加
public class CartaddAction extends Action {
	@SuppressWarnings("unused")
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();

		//product.jspで追加するを押した商品のid取得
		int product_id=Integer.parseInt(request.getParameter("id"));

//		発注個数を取得
		int order_count = Integer.parseInt(request.getParameter("product_quantity"));

		//セッションからcartの属性の情報を取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
		List<Product> product=(List<Product>)session.getAttribute("product");
		List<User> user =(List<User>) session.getAttribute("user");
//		登録日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date adding_time = java.sql.Date.valueOf(formattedDate);

		ProductDAO dao = new ProductDAO();
//		企業ID取得
		int comp_id =0;
		for(Product p : product){
			if(p.getId()==product_id){
				comp_id =p.getCompany_id();
				break;
			}
		}
//	ユーザID取得
		int u_id=0;
		for(User u : user){
			u_id = u.getId();
			break;
		}

//		カートテーブルにinsert
		int addcart_line=dao.insert_cart(u_id, product_id, comp_id, order_count,adding_time);

		//cartの中身がnullだったらsetAttributeで属性名cartを設定する
		if (cart==null) {
			cart=new ArrayList<Product_cart>();
			session.setAttribute("cart", cart);
		}
		//cartの中の情報をProduct_cartにセットしていく
		//返り値はcart.jsp
		for (Product_cart i : cart) {
			if (i.getProduct().getId()==product_id) {
				i.setOrder_count(i.getOrder_count()+1);
				return "user_cart.jsp";
			}
		}

//		cartの中の情報をItemにセットしていく
//		商品IDと一緒かどうかの判定
		for (Product p : product) {
			//productのidと同じ場合の処理
			if (p.getId()==product_id) {
				Product_cart i =new Product_cart();
//				prodct型の変数
				i.setProduct(p);
				i.setId(product_id);
				cart.add(i);
			}
		}
		return "user_cart.jsp";
	}
}
