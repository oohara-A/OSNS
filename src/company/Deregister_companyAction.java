package company;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import dao.CompanyDAO;
import tool.Action;

public class Deregister_companyAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		int id = 0;

		@SuppressWarnings("unchecked")
		Company company_been=(Company)session.getAttribute("login_company");
		if (company_been != null) {
				//id取得
				id = company_been.getId();
				System.out.println("id取得");
		}else{
			// エラーメッセージをセットしてエラーを通知する
		    String errorMessage = "会社情報が見つかりませんでした。再度ログインしてください。";
		    request.setAttribute("error_message", errorMessage);
		    //エラー画面に遷移
		    return "com_login_error.jsp";
		}

		//削除日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date deleting_time = java.sql.Date.valueOf(formattedDate);

    	CompanyDAO dao=new CompanyDAO();
    	boolean company = dao.deregister_company(id,deleting_time);

    	//登録解除が正常に出来た場合
		if(company == true){
			// ユーザBeanを削除
			session.removeAttribute("company");
			System.out.println("登録解除");
			//topページに戻す
			return "../user/index.jsp";

		}else{
			//company_top_page.jspに遷移
			return "company_top_page.jsp";
		}
	}
}
