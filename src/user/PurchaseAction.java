package user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product_cart;
import bean.Purchase_history;
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
		//カートの情報を取得
		List<Product_cart> cart=(List<Product_cart>)session.getAttribute("cart");
		List<Purchase_history> purc_his = new ArrayList<>();
//		商品Id取得
		ArrayList<Integer> pro_id  = new ArrayList<>();
		ArrayList<Integer> pro_count = new ArrayList<>();
		int pid = 0;
		int pro_c = 0;
		for(Product_cart i : cart){
			pid = i.getId();
			pro_c = i.getOrder_count();
			System.out.print(pid);
			pro_id.add(pid);
			pro_count.add(pro_c);
		}
//		企業Id取得
		ArrayList<Integer> cart_id = new ArrayList<>();
		int cartid = 0;
		ArrayList<Integer> comp_id = new ArrayList<>();
		int id = 0;
		for(Product_cart i : cart){
			id = i.getCompany_id();
			cartid = i.getCart_id();
			comp_id.add(id);
			cart_id.add(cartid);
		}
//		ユーザー情報取得
		User user = (User) session.getAttribute("user");
		int user_id = user.getId();

//	クーポン所得
		String coupon_code;
		coupon_code = request.getParameter("coupon");
		if(coupon_code==null){
			coupon_code = "なし";
		}else{
			coupon_code = request.getParameter("coupon-code");
		}
		System.out.println(coupon_code);

//		購入日時・１２・１８
			Date date = new Date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String formattedDate = simpleDateFormat.format(date);
			java.sql.Date purchase_date = java.sql.Date.valueOf(formattedDate);

//		    住所取得
			String addre = "";
//			県名
			String prefecture = request.getParameter("prefecture");
//			市町村
			String municipalities = request.getParameter("municipalities");
//			番地
			String street = request.getParameter("street");
			addre = addre+prefecture+municipalities+ street;


//購入処理
		PurchaseDAO dao2 = new PurchaseDAO();
		dao2.insert(comp_id, user_id, coupon_code, purchase_date,pro_id,addre,cart_id,pro_count);
//		購入履歴を持ってくる
		purc_his = dao2.selectPurchase(user_id);
		session.removeAttribute("cart");
		session.setAttribute("purc_his", purc_his);
//		購入完了画面
		return "fin_cash.jsp";
	}

}