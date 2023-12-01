package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import dao.CompanyDAO;

public class Product_registrationAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();
		// 商品名
		String product_name=request.getParameter("product_name");
		// 商品価格
		int unit_price=Integer.parseInt(request.getParameter("unit_price"));
		// 商品画像


		// 在庫
		int regiinvqua=Integer.parseInt(request.getParameter("regiinvqua"));
		// ジャンル
		String category=request.getParameter("category");
		// 商品コメント
		String product_description=request.getParameter("product_description");

		// ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	//入力した情報をデータベースに登録
			CompanyDAO dao=new CompanyDAO();
			Product add_product=dao.productregistration(product_name,unit_price,regiinvqua,category,product_description,image_filename);
			session.setAttribute("product", add_product);
			// product_registration_complete.jspをフォワード先に指定
			return "product_registration_complete.jsp";

		//ログインされていない場合
        }else{
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
