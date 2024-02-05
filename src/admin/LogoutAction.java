package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;
import user.SendindexAction;

public class LogoutAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();

		// セッションから削除
		session.removeAttribute("login_admin");
		SendindexAction sendindexAction = new SendindexAction();
		// admin.jspをフォワード先に指定
		return sendindexAction.execute(request, response);
	}
}
