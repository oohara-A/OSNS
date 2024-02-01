package company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.CompanyDAO;
import tool.Action;

public class Product_listAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		//ログインされている場合
		if (session.getAttribute("login_company")!=null){

	        // CompanyDAOを使用して商品一覧を取得
			CompanyDAO dao=new CompanyDAO();
			List<Product> product_list = dao.product_list();

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
