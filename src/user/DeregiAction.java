package user;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import tool.Action;

//登録解除クラス
public class DeregiAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションを使えるようにする
		HttpSession session=request.getSession();

		//登録しているユーザidを取得
		int id=Integer.parseInt(request.getParameter("id"));
//		削除日時日時
		LocalDateTime adding_time = LocalDateTime.now();
		//登録解除
		UserDAO dao=new UserDAO();
		boolean user = dao.update(id,adding_time);
//		登録解除が正常に出来た場合
		if(user == true){
			// ユーザBeanを削除
			session.removeAttribute("user");
//			topページに戻す
			return "index.jsp";

		}
//		アラートを出す

//		topページに戻す
		return "index.jsp";
	}

}
