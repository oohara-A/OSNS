package user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
import tool.Action;

//会員登録解除クラス
public class DeregiAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションを使えるようにする
		HttpSession session=request.getSession();
		int uesr_id = 0;
		@SuppressWarnings("unchecked")
		User user_been=(User)session.getAttribute("user");
//			id取得
			uesr_id = user_been.getId();
//		削除日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date date1 = java.sql.Date.valueOf(formattedDate);
		//登録解除
		UserDAO dao=new UserDAO();
		boolean user = dao.update(uesr_id,date1);
//		登録解除が正常に出来た場合
		if(user == true){
			// ユーザBeanを削除
			session.removeAttribute("user");
			System.out.println("登録解除完了");
//			topページに戻す
			return "index.jsp";

		}
//		アラートを出す

//		topページに戻す
		return "index.jsp";
	}

}
