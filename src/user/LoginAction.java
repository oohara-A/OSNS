package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
//ログインクラス
public class LoginAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// jspファイルからユーザ名とパスワードとログイン日時を取得
		String user_name=request.getParameter("user_name");
		String password=request.getParameter("password");
		Date date = new Date();

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date login_date = java.sql.Date.valueOf(formattedDate);


		// 指定したユーザ名とパスワードのユーザをデータベースから検索する
		UserDAO dao=new UserDAO();
		List<User>user=(List<User>)dao.search(user_name, password, login_date);
		int user_id = 0;
		for(User u :user){
			user_id = u.getId();
			break;
		}
		UserDAO dao2 = new UserDAO();
		boolean flag = dao2.insert_login(user_id, login_date);


		// ユーザ名とパスワードに合致するユーザが見つかった場合、属性名userで登録する
		if (user!=null) {
			session.setAttribute("user",user);
			// gacha.jspをフォワード先に指定
			return "gacha.jsp";
		}

		// エラーのアラートを表示


		// login.jspをフォワード先に指定
		return "login.jsp";
	}
}
