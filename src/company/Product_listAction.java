package company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.CompanyDAO;

public class Product_listAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// 商品名
		String product_name=request.getParameter("product_name");
		// 価格
		int unit_price=Integer.parseInt(request.getParameter("unit_price")) ;
		// 在庫
		int regiinvqua=Integer.parseInt(request.getParameter("regiinvqua"));

		// 商品名が入力されていない場合
		if (product_name==null) product_name="";

		//ログインされている場合
		if (session.getAttribute("login_company")!=null)  {

	        // AdminDAOを使用して管理者一覧を取得
			CompanyDAO dao=new CompanyDAO();
			List<Product> product_list = dao.productlist(product_name,unit_price,regiinvqua);

	        // 取得した管理者一覧をセッションに保存
	        session.setAttribute("productlist", product_list);

	     // product_summary.jspをフォワード先に指定
	        return "product_summary.jsp";

	    //ログインされていない場合
		}else{
			// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
		}
	}
}
