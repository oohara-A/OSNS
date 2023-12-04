package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import tool.Action;
//メッセージ削除
public class MessagdelAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッション使用
		HttpSession session = request.getSession();
//		メッセージID取得
		int messe_id =Integer.parseInt(request.getParameter("email_id"));
//		ユーザのID取得
		User user = new User();
		user= (User) session.getAttribute("user");
		int user_id = user.getId();
//
		return null;
	}

}
