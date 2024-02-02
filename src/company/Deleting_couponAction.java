package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyDAO;
import tool.Action;

public class Deleting_couponAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// クーポンid
        int coupon_id = Integer.parseInt(request.getParameter("coupon_id"));

        // ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	CompanyDAO dao=new CompanyDAO();
        	Boolean delete_coupon=dao.delete_coupon(coupon_id);

        	session.setAttribute("coupondelete", delete_coupon);

        	// product_list.jspをフォワード先に指定
        	return "coupon_list.jsp";

        // ログインされていない場合
        } else {
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
