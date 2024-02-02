package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.User;
import dao.ProductDAO;
import tool.Action;
//商品のカート追加
public class CartaddAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			//sessionの情報を取得
			HttpSession session=request.getSession();
			session.removeAttribute("cart");
//			ログインしていない場合
			User user = (User) session.getAttribute("user");
			if(user == null){
				return "user_login.jsp";
			}
			//product.jspで追加するを押した商品のid取得
			int product_id=Integer.parseInt(request.getParameter("id"));

	//		発注個数を取得
			int order_count =Integer.parseInt(request.getParameter("cnt"));
			//セッションからcartの属性の情報を取得

<<<<<<< HEAD
	//		登録日時
			Date date = new Date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String formattedDate = simpleDateFormat.format(date);
			java.sql.Date adding_time = java.sql.Date.valueOf(formattedDate);

			ProductDAO dao = new ProductDAO();
	//		企業ID取得
			int comp_id = 0;
			List<Product> product=dao.selectId(product_id);
			for(Product p: product){
				comp_id = p.getCompany_id();
				break;
			}

	//	ユーザID取得
			int u_id=0;
			u_id = user.getId();
	//		カートテーブルにinsert
			List<Product> pro_cart=dao.insert_cart(u_id, product_id, comp_id, order_count,adding_time);
			session.setAttribute("cart", pro_cart);
			System.out.println("cartaction");

			return "cart.jsp";

=======
//		発注個数を取得
		int order_count =Integer.parseInt(request.getParameter("cnt"));
		//セッションからcartの属性の情報を取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
		User user = (User) session.getAttribute("user");

//		登録日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date adding_time = java.sql.Date.valueOf(formattedDate);

		ProductDAO dao = new ProductDAO();
//		企業ID取得
		int comp_id = 0;
		List<Product> product=dao.selectId(product_id);
		for(Product p: product){
			comp_id = p.getCompany_id();
			break;
		}

//	ユーザID取得
		int u_id=0;
		u_id = user.getId();
//		カートテーブルにinsert
		List<Product> pro_cart=dao.insert_cart(u_id, product_id, comp_id, order_count,adding_time);

		//cartの中身がnullだったらsetAttributeで属性名cartを設定する
		if (cart==null) {
			cart=new ArrayList<Product_cart>();
			session.setAttribute("cart", pro_cart);
			System.out.println("cartaction");
		}else{
			session.setAttribute("cart", pro_cart);
			System.out.println("cartaction");
		}
//		//cartの中の情報をProduct_cartにセットしていく
//		//返り値はcart.jsp
//		for (Product_cart i : cart) {
//			if (i.getProduct().getId()==product_id) {
//				i.setOrder_count(i.getOrder_count()+1);
//			}
//		}
//
////		cartの中の情報をItemにセットしていく
////		商品IDと一緒かどうかの判定
//		for (Product p : product) {
//			//productのidと同じ場合の処理
//			if (p.getId()==product_id) {
//				Product_cart i =new Product_cart();
////				prodct型の変数
//				i.setProduct(p);
//				i.setId(product_id);
//				cart.add(i);
////			}
//		  }
//		}
		return "cart.jsp";
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		}
	}
