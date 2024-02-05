package company;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Product;
import bean.Review;
import dao.CompanyDAO;
import tool.Action;

public class Product_registrationAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();
		Review rev = new Review();
		// 商品名
		String product_name=request.getParameter("product_name");
		System.out.println(product_name);
		// 商品価格
		int unit_price=Integer.parseInt(request.getParameter("unit_price"));

		// 商品画像
		Part part = request.getPart("image_filename");

		String filename = rev.getFileName(part);
		System.out.println(filename);
		 String[] filenames = filename.split("\\\\"); // Windowsの場合
		List<String> filenames2 = new ArrayList<>();

		for (String file : filenames) {
		    filenames2.add(file);
		}

		int len = filenames2.size();
		String filename2 = filenames2.get(len - 1);
		System.out.println(filename2);
		part.write("C:\\\\Users\\\\adomin\\\\OneDrive - ooharastudent\\\\デスクトップ\\\\OSNS\\\\WebContent\\\\assets\\\\proimage"+"\\\\" + filename2);


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
			Product add_product=dao.product_registration(category_name,product_name,unit_price,add_date,product_description,regiinvqua,filename2 );
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
