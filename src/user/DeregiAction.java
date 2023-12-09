package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
		int id = 0;
		@SuppressWarnings("unchecked")
		List<User> user_been=(List<User>)session.getAttribute("user");
		for(User i : user_been){
//			id取得
			id = i.getId();
		}
//		削除日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date date1 = java.sql.Date.valueOf(formattedDate);
		//登録解除
		UserDAO dao=new UserDAO();
		boolean user = dao.update(id,date1);
//		登録解除が正常に出来た場合
		if(user == true){
			// ユーザBeanを削除
			session.removeAttribute("user");
			System.out.println("登録解除");
//			topページに戻す
			return "index.jsp";

		}
//		アラートを出す

//		topページに戻す
		return "index.jsp";
	}

}
