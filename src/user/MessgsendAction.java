package user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.EmaileDAO;
import tool.Action;
//メッセージ送信
public class MessgsendAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		@SuppressWarnings("unchecked")
		User user =(User) session.getAttribute("user");
//		ユーザーID取得
		int user_id = 0;
		user_id = user.getId();
//  	相手のユーザID取得
		int id = Integer.parseInt(request.getParameter("id"));
//		メッセージ本文
		String body = request.getParameter("review_input");
//		メッセージ返信日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date send_date = java.sql.Date.valueOf(formattedDate);
//		送信状態
		String status = "送信済み";
//		送信処理
		EmaileDAO dao = new EmaileDAO();
		boolean flag = dao.emaile_send(user_id, id, body, send_date);
		if(flag== true){
			return "message.jsp";
		}
//エラー処理
		return "user_login_error.jsp";
	}

}
