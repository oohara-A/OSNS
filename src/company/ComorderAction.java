package company;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import bean.Purchase_history;
import dao.PurchaseDAO;
import tool.Action;

public class ComorderAction extends Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
				HttpSession session=request.getSession();
				List<Purchase_history> purc_his = new ArrayList<>();
				Company com_info = (Company) session.getAttribute("login_company");
//				購入する商品Id
				int com_id = 0;
				com_id = com_info.getId();
//				商品情報を持ってくる
				PurchaseDAO dao = new PurchaseDAO();
				purc_his = dao.selectComPurchase(com_id);
				session.setAttribute("com_purc_his", purc_his);
		return "com_order_history.jsp";
	}

}
