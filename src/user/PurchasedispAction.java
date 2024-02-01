package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Purchase_history;
import dao.PurchaseDAO;
import tool.Action;

public class PurchasedispAction extends Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		List<Purchase_history> purc_his = new ArrayList<>();

//		購入する商品Id
		int user_id = 0;
		user_id = Integer.parseInt(request.getParameter("id"));
//		商品情報を持ってくる
		PurchaseDAO dao = new PurchaseDAO();
		purc_his = dao.selectPurchase(user_id);
		session.setAttribute("purc_his", purc_his);

		//購入処理画面
		return "order_history.jsp";

	}


}
