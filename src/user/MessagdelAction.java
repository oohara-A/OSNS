package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Email;
import bean.User;
import dao.EmaileDAO;
import tool.Action;
//メッセージ削除
public class MessagdelAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッション使用
		HttpSession session = request.getSession();
		session.removeAttribute("send_email");
//		メッセージID取得
		int messe_id =Integer.parseInt(request.getParameter("id"));
		System.out.println(messe_id);
//		ユーザのID取得
		User user = new User();
		user= (User) session.getAttribute("user");
		int user_id = user.getId();
//		削除処理
		EmaileDAO dao = new EmaileDAO();
		boolean flag = dao.emaile_del(messe_id, user_id);
		List<Email> email = dao.selectuser(user_id);
		if(email.isEmpty()){
			email=null;
			session.setAttribute("send_email", email);

		}else {
			session.setAttribute("send_email", email);
		}
		if(flag == true){
		return "message_inf.jsp";
		}
//		エラーページを表示
		return "error.jsp";
	}

}
