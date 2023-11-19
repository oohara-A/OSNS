package user;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
import tool.Action;
//ユーザプロフィール編集
public class EditproAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    int id = 0;
		//セッションを使えるようにする
		HttpSession session=request.getSession();
		@SuppressWarnings("unchecked")
		List<User> user_been=(List<User>)session.getAttribute("user");
		for(User i : user_been){
			id = i.getId();
		}
		//ログイン名を取得
		String name=request.getParameter("profile_name");
//		メールアドレス
		String email = request.getParameter("profile_mail");
//		電話番号
		String phone_number = request.getParameter("profile_tellephone");
		//ログインパスワードを取得
		String password=request.getParameter("profile_password");

//		ログイン日時
		LocalDateTime adding_time = LocalDateTime.now();
//		データベース処理
		UserDAO dao = new UserDAO();
		boolean flag = dao.pro_update(id,name,email,phone_number,adding_time);



//プロフィール画面を表示
		return "user_profile.jsp";
	}

}
