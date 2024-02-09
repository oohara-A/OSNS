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

		}
	}
