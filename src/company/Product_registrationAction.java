package company;

import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

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
		//name属性がpictのファイルをPartオブジェクトとして取得
		Part image_filename=request.getPart("image_filename");
		//ファイル名を取得
		//String filename=part.getSubmittedFileName();//ie対応が不要な場合
		String filename=Paths.get(image_filename.getSubmittedFileName()).getFileName().toString();

		// 在庫
		int regiinvqua=Integer.parseInt(request.getParameter("regiinvqua"));
		// ジャンル
		String category_name=request.getParameter("category_name");
		// 商品コメント
		String product_description=request.getParameter("product_description");

		//追加日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date add_date = java.sql.Date.valueOf(formattedDate);

		// ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	//入力した情報をデータベースに登録
			CompanyDAO dao=new CompanyDAO();
			Product add_product=dao.product_registration(product_name,unit_price,regiinvqua,category_name,product_description,filename,add_date);
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
