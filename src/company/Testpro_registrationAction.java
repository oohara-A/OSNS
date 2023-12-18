package company;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Review;
import bean.Test_product;
import dao.CompanyDAO;
import tool.Action;

public class Testpro_registrationAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();
		Review rev = new Review();
		// 試供品名
		String testpro_name=request.getParameter("testpro_name");
		// 試供品価格
		int test_price=Integer.parseInt(request.getParameter("test_price"));

		// 試供品画像
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

		// 在庫
		int regiinvqua=Integer.parseInt(request.getParameter("regiinvqua"));
		// ジャンル
		String category_name=request.getParameter("category_name");
		// 試供品コメント
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
<<<<<<< HEAD
//			Test_product add_test_product=dao.testpro_registration(testpro_name,test_price,regiinvqua,category_name,product_description,filename,add_date);
//			session.setAttribute("testproduct", add_test_product);
=======
			Test_product add_test_product=dao.testpro_registration(testpro_name,test_price,filename2,regiinvqua,category_name,product_description,add_date);
			session.setAttribute("testproduct", add_test_product);
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961
			// product_registration_complete.jspをフォワード先に指定
			return "product_registration_complete.jsp";

		//ログインされていない場合
        }else{
        	CompanyDAO dao=new CompanyDAO();
			Test_product add_test_product=dao.testpro_registration(testpro_name,test_price,filename2,regiinvqua,category_name,product_description,add_date);
			session.setAttribute("testproduct", add_test_product);
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
