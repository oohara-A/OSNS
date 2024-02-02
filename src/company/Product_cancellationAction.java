package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyDAO;
import tool.Action;

public class Product_cancellationAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// 商品id
        int id = Integer.parseInt(request.getParameter("id"));

        // ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	CompanyDAO dao=new CompanyDAO();
        	boolean delete_product=dao.product_cancellation(id);

        	session.setAttribute("productdelete", delete_product);

        	// product_list.jspをフォワード先に指定
        	return "product_list.jsp";

        // ログインされていない場合
        } else {
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
