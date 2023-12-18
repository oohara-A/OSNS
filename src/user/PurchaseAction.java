package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import bean.Product_cart;
import bean.User;
import dao.PurchaseDAO;
import tool.Action;

//購入処理
public class PurchaseAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		合計金額を入れる変数
		int total =0;
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
//		購入する商品の情報
		List<Product>  Purchase_pro = (List<Product>) session.getAttribute("Purchasepro");
		//カートの情報を取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
//		ユーザの情報を取得
		User user = (User) session.getAttribute("user");
//		購入個数取得
		int count = Integer.parseInt(request.getParameter("register_quantity"));
//		電話番号
		String tellephone = request.getParameter("register_tellephone");
//		住所
		String deladdress = request.getParameter("register_tellephone");

//		購入する商品Id
		int product_id = Integer.parseInt(request.getParameter("id"));
//購入方法
		String paymentmethod = request.getParameter("register_credit");

//		ユーザーId取得
		int user_id = 0;
		user_id = user.getId();

//		企業ID取得
		int company_id = 0;
		for(Product_cart p: cart){
			if(product_id==p.getProduct_id()){
				company_id = p.getCompany_id();
				break;
			}
		}
//		購入金額
		int price =0;
		for(Product pr:Purchase_pro){
			price = pr.getUnit_price()*count;
			break;
		}
//クーポンId取得
//		後で追加
	int	coupon = 1;
//購入日時取得
	Date date = new Date();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String formattedDate = simpleDateFormat.format(date);
	java.sql.Date adding_time = java.sql.Date.valueOf(formattedDate);


//購入処理
		PurchaseDAO dao2 = new PurchaseDAO();
		dao2.insert(company_id, user_id, coupon, adding_time, price, paymentmethod, deladdress, tellephone,product_id);
//		購入完了画面
		return "buy_completion.jsp";
	}

}
