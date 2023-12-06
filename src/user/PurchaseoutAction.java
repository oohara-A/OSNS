package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.ProductDAO;
import tool.Action;
//購入画面を表示する際の情報取得
public class PurchaseoutAction extends Action {
		public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			//sessionの情報を取得
			HttpSession session=request.getSession();

//			購入する商品Id
			int product_id = Integer.parseInt(request.getParameter("id"));
//			商品情報を持ってくる
			ProductDAO dao = new ProductDAO();
			List<Product> product = dao.selectId(product_id);
			session.setAttribute("Purchasepro", product);
//購入処理画面
			return "cash_register.jsp";
		}

}
