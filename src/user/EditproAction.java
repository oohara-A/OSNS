package user;

import java.text.SimpleDateFormat;
import java.util.Date;

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
		User user_been=(User)session.getAttribute("user");
			id = user_been.getId();
		String name=request.getParameter("nameInput");
//		メールアドレス
		String email = request.getParameter("mailInput");

//		電話番号
		String phone_number = request.getParameter("phoneInput");
		//ログインパスワードを取得
		String password=request.getParameter("profile_password");

//		ログイン日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date date1 = java.sql.Date.valueOf(formattedDate);

//		データベース処理
		UserDAO dao = new UserDAO();
		boolean flag = dao.pro_update(id,name,email,phone_number,password,date1);
		if(flag == true){
			//プロフィール画面を再表示
			return "user_profile.jsp";
		}
//		errorアラート

//		プロフィール画面再表示
		return "user_profile.jsp";



	}

}
