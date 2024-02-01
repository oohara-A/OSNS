package company;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Coupon;
import dao.CompanyDAO;
import tool.Action;

public class Display_coupon_listAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		//ログインされている場合
		if (session.getAttribute("login_company")!=null)  {

	        // CompanyDAOを使用して管理者一覧を取得
			CompanyDAO dao=new CompanyDAO();
			List<Coupon> coupon_list = dao.coupon_list();

	        // 取得したクーポン一覧をセッションに保存
	        session.setAttribute("couponlist", coupon_list);

	     // product_summary.jspをフォワード先に指定
	        return "coupon_list.jsp";

	    //ログインされていない場合
		}else{
			// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
		}
	}
}
