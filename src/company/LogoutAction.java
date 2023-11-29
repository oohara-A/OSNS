package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		// ログインされている場合
        if (session.getAttribute("login_company")!=null) {
			// セッションから削除
			session.removeAttribute("company");
			// company_top_page.jspをフォワード先に指定
			return "company_top_page.jsp";

		//ログインされていない場合
        }else{
        	//エラーアラートを表示


	    	// company_top_page.jspをフォワード先に指定
	    	return "company_top_page.jsp";
        }
	}
}
