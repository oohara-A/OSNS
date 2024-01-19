package company;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import dao.CompanyDAO;
import tool.Action;

public class Edit_comp_infoAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();
//		企業ID
		int id = Integer.parseInt(request.getParameter("com_id"));
		// 氏名
		String name=request.getParameter("name");
		System.out.println("企業編集"+name);
		// 企業名
		String company_name=request.getParameter("company_name");
		// 所在地
		String address=request.getParameter("address");
		// メールアドレス
		String email=request.getParameter("email");
		// 電話番号
		String phone_number=request.getParameter("phone_number");

		// パスワード
		String password=request.getParameter("password");
		System.out.println("編集アクションのパスワード１"+password);

		// パスワード(確認)
		String password2=request.getParameter("password2");
		System.out.println("編集アクションのパスワード2"+password2);

		//更新日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date update_date = java.sql.Date.valueOf(formattedDate);

		// ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	// 入力したパスワードが一致した場合
        	if(password.equals(password2)){
        		System.out.println("編集アクションのtrue実行");
	        	//入力した情報をデータベースに登録
				CompanyDAO dao=new CompanyDAO();
				Company edit_company_info=dao.edit_comp_info(id,name,company_name,address,email,phone_number,password,update_date);
				session.setAttribute("company", edit_company_info);
				// company_top_page.jspをフォワード先に指定
				return "Edit_comp_info_complete.jsp";
			// 入力したパスワードが一致しなかった場合
        	}else{
        		// company_info_edit.jspをフォワード先に指定
        		System.out.println("編集アクションのelse実行");
        		return "company_info_edit.jsp";
        	}

		//ログインされていない場合
        }else{
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
