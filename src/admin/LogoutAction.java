package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		// ログインされている場合
        if (session.getAttribute("login_admin")!=null) {
			// セッションから削除
			session.removeAttribute("admin");
			// admin.jspをフォワード先に指定
			return "admin.jsp";
        }else{
        	//エラーアラートを表示


	    	// admin.jspをフォワード先に指定
	    	return "admin.jsp";
        }
	}
}
