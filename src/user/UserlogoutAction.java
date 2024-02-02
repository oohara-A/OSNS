package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;

public class UserlogoutAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		// ユーザBeanを削除
		session.removeAttribute("user");
		session.removeAttribute("Address");
		session.removeAttribute("cart");
		session.removeAttribute("user_review");
		session.removeAttribute("send_email");
		session.removeAttribute("purc_his");
		// フォワード先を指定
		return "index.jsp";
	}
}
