package user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Purchase_history;
import bean.User;
import dao.PurchaseDAO;
import tool.Action;
//購入キャンセル処理
public class PurCancelAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PurchaseDAO dao = new PurchaseDAO();

		//sessionの情報を取得
		HttpSession session=request.getSession();
//		注文番号取得 log_number
		int log_number =Integer.parseInt(request.getParameter("log_number"));

//		削除日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date date1 = java.sql.Date.valueOf(formattedDate);

		boolean flag = dao.updatePurchase(log_number, date1);
		if(flag == true){
			session.removeAttribute("purc_his");
//			ユーザー情報取得
			User user = (User) session.getAttribute("user");
			int user_id = user.getId();
			List<Purchase_history> purc_his = new ArrayList<>();
			PurchaseDAO dao2 = new PurchaseDAO();
			purc_his = dao2.selectPurchase(user_id);
			session.setAttribute("purc_his", purc_his);
//購入履歴ページ表示
		return "order_history.jsp";
		}

//エラーメッセージ表示

//購入履歴ページ表示
		return "order_log.jsp";
	}

}