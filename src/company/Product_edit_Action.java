package company;

<<<<<<< HEAD
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
=======
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyDAO;
import tool.Action;

public class Product_edit_Action extends Action{
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
		//商品画像ID
		String[] pro_image_ids = request.getParameterValues("pro_image_id");
		//商品画像IDがnullの場合
//		if(pro_image_ids==null)pro_image_ids=" ";
		//intに変換
		int[] intArray = Stream.of(pro_image_ids).mapToInt(Integer::parseInt).toArray();

		//商品画像リスト


		// 在庫
		int regiinvqua=Integer.parseInt(request.getParameter("regiinvqua"));
		// ジャンル
		String category_name=request.getParameter("category_name");
		// 商品コメント
		String product_description=request.getParameter("product_description");

		//更新日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date update_date = java.sql.Date.valueOf(formattedDate);

		// ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	//入力した情報をデータベースに登録
			CompanyDAO dao=new CompanyDAO();
//			Product edit_product=dao.product_edit(product_name,unit_price,regiinvqua,category_name,product_description,update_date);
//			session.setAttribute("product", edit_product);
//			// product_registration_complete.jspをフォワード先に指定
			return "product_registration_complete.jsp";

		//ログインされていない場合
        }else{
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
