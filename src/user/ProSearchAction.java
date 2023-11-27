package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.ProductDAO;
import tool.Action;

//商品検索
public class ProSearchAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
		HttpSession session=request.getSession();
		//商品検索した名前の所得
		String keyword=request.getParameter("keyword");
		if (keyword==null) keyword="";
		ProductDAO dao = new ProductDAO();
		List<Product> product=dao.search(keyword);
		//セッションにlist属性で登録
		session.setAttribute("product", product);
//		商品リストに遷移
		return "product_list";
	}

}
