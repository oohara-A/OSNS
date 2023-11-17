package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;

public class ShowreviewAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// 商品名
		String product_name=request.getParameter("product_name");

		// 商品名がnullでないか
        if (product_name != null && !product_name.isEmpty()) {
            // DB接続処理
            ProductDAO dao = new ProductDAO();

            // サーチ実行処理
            Product product = dao.search(product_name);

            session.setAttribute("product", product);

            return "reviw_list.jsp";
        } else {
            // 商品名がnullまたは空の場合
            return "reviw_list.jsp";
        }
	}
}
