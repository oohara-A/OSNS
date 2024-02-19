package company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import bean.Coupon;
import dao.CompanyDAO;
import tool.Action;

public class Coupon_searchAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		// クーポン名
		String coupon_name = request.getParameter("search");


		//ログインされている場合
		if (session.getAttribute("login_company")!=null)  {
			Company company = (Company) session.getAttribute("login_company");
			int company_id = company.getId();

	        // CompanyDAOを使用して管理者一覧を取得
			CompanyDAO dao=new CompanyDAO();
			List<Coupon> coupon_search = dao.coupon_search(company_id,coupon_name);

	        // 取得したクーポン一覧をセッションに保存
	        session.setAttribute("couponlist", coupon_search);

	     // product_summary.jspをフォワード先に指定
	        return "coupon_list.jsp";

	    //ログインされていない場合
		}else{
			// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
		}
	}
}
