package user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
import tool.Action;
//ログインクラス
public class LoginAction extends Action{
	@SuppressWarnings("unused")
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		// セッションを開始
		HttpSession session=request.getSession();

		// jspファイルからユーザ名とパスワードとログイン日時を取得
		String user_name=request.getParameter("inq_name");
		String password=request.getParameter("inq_com_name");

		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date login_date = java.sql.Date.valueOf(formattedDate);

		// 指定したユーザ名とパスワードのユーザをデータベースから検索する
		UserDAO dao=new UserDAO();
		User user=dao.search(user_name, password, login_date);
		int user_id = 0;
		// ユーザ名とパスワードに合致するユーザが見つかった場合、属性名userで登録する
		if (user!=null) {
			session.setAttribute("user",user);
			System.out.print("ログイン完了");
			return "index.jsp";
		}
	// エラーページ
		return "user_login_error.jsp";
	}
	}
