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
		List<Integer> replyComments = new ArrayList<>();
//		自分のユーザID取得
		User user =  (User) session.getAttribute("user");
		int user_id = 0;
		user_id = user.getId();
//		相手のユーザID取得
		for (int i = 0; true; i++) {
			String id = request.getParameter("id");
		    String paramName = "reply_comment_" + id;
		    String paramValue = request.getParameter(paramName);
		    if (paramValue == null) {
		        // パラメータがなくなったら終了
		        break;
		    }
		    int commentValue = Integer.parseInt(paramValue);
		    replyComments.add(commentValue);
		}
//		自分のメッセ―ジの情報を取得
		List<Email> user_maile =  (List<Email>) new Email();
		user_maile = dao.selectuser(user_id);
		session.setAttribute("user_maile", user_maile);

//		相手のメッセージを取得
		List<Email> recipient_maile = new ArrayList<>();
		for(int recipient : replyComments){
			recipient_maile.add(dao.select_recipient(recipient));
		}
		session.setAttribute("recipient_maile", recipient_maile);


//		メッセージ画面を表示
		return "message.jsp";
	}

}
