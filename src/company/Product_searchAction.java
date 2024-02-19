package company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import bean.Product;
import dao.CompanyDAO;
import tool.Action;

public class Product_searchAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		// 商品名
		String product_name = request.getParameter("search");

		//ログインされている場合
		if (session.getAttribute("login_company")!=null){
			Company company = (Company) session.getAttribute("login_company");
			int company_id = company.getId();

	        // CompanyDAOを使用して商品一覧を取得
			CompanyDAO dao=new CompanyDAO();
			List<Product> product_search = dao.product_search(company_id,product_name);

	        // 取得した商品一覧をセッションに保存
	        session.setAttribute("productlist", product_search);

	        // product_summary.jspをフォワード先に指定
	        return "product_summary.jsp";

	    //ログインされていない場合
		}else{
			// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
		}
	}
}
