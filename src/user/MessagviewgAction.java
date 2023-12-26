package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Email;
import bean.User;
import dao.EmaileDAO;
import tool.Action;
//メッセージ表示処理
public class MessagviewgAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッション使用
		HttpSession session = request.getSession();
//		メールdao接続
		EmaileDAO dao = new EmaileDAO();
//		自分のユーザID取得
		User user =  (User) session.getAttribute("user");
		int user_id = 0;
		if(user !=null){
			user_id = user.getId();
		}
//		自分のメッセ―ジの情報を取得
		List<Email> user_maile = new ArrayList<>();
		user_maile = dao.selectuser(user_id);
		if(user_maile.isEmpty()){
			user_maile = null;
			session.setAttribute("send_email", user_maile);
		}else {
			session.setAttribute("send_email", user_maile);
		}

//		メッセージ画面を表示
		return "message_inf.jsp";
	}

}
