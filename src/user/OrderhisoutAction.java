package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Purchase_history;
import bean.User;
import dao.PurchaseDAO;
import tool.Action;

//購入履歴表示処理
public class OrderhisoutAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		PurchaseDAO dao = new PurchaseDAO();

		@SuppressWarnings("unchecked")
		List<User> user = (List<User>) session.getAttribute("user");
//		ユーザーID取得
		int user_Id = 0;
		for(User u :user){
			user_Id = u.getId();
			break;
		}
//		購入履歴情報取得
		List<Purchase_history> purchase_his = dao.selectPurchase(user_Id);
//		商品ID取得
		int product_id =0;
		for(Purchase_history p: purchase_his){
			product_id = p.getProduct_id();
		}

		@SuppressWarnings("unchecked")
		List<Purchase_history> pro_purchase = (List<Purchase_history>) dao.selctProPurchase(product_id);
		session.setAttribute("pro_purchase", pro_purchase);
//購入履歴ページ

		return "order_log.jsp";
	}

}
