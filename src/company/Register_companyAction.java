package company;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Company;
import bean.Review;
import dao.CompanyDAO;
import tool.Action;

public class Register_companyAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		Review rev = new Review();
		//氏名
		String name=request.getParameter("name");
		//企業名
		String company_name=request.getParameter("company_name");
		//所在地
		String address=request.getParameter("address");
		//メールアドレス
		String email=request.getParameter("email");
		//電話番号
		String phone_number=request.getParameter("phone_number");

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

		//パスワード
		String password=request.getParameter("password");
		//パスワード(確認)
		String password2=request.getParameter("password2");
		//追加日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date add_date = java.sql.Date.valueOf(formattedDate);

		//パスワードが一致した場合
		if (password.equals(password2)) {
			//データベースに接続
			CompanyDAO dao=new CompanyDAO();
			Company add_company=dao.register(name, company_name, address, email, phone_number,filename2, password, add_date);

			// 入力した情報に合致する企業が見つからなかった場合、属性名companyで登録する
			if (add_company==null) {
				session.setAttribute("add_company", add_company);
				// company_registration_complete.jspをフォワード先に指定
				return "company_registration_complete.jsp";
			}else{
				// company_registration_error.jspをフォワード先に指定
				return "company_registration_error.jsp";
			}

		//パスワードが一致しない場合
		}else{
			// company_registration.jspをフォワード先に指定
			return "company_registration.jsp";
		}
	}
}
