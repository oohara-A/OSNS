package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Coupon;
import dao.CompanyDAO;

public class Coupon_issuing_creationAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// クーポン名
        String coupon_name = request.getParameter("coupon_name");
        // クーポンコード
        String coupon_code = request.getParameter("coupon_code");
        // 割引率
        int effect = Integer.parseInt(request.getParameter("effect"));

        // ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	CompanyDAO dao=new CompanyDAO();
        	Coupon issue_coupon=dao.coupon_issuing_creation(coupon_name,coupon_code,effect);

        	session.setAttribute("couponissue", issue_coupon);

        	// product_list.jspをフォワード先に指定
        	return "product_list.jsp";

        // ログインされていない場合
        } else {
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
