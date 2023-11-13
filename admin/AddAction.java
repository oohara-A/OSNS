package admin;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;

public class AddAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
//		氏名
		String name=request.getParameter("admin_name");
//		メールアドレス
		String email=request.getParameter("admin_email");
//		パスワード
		String password=request.getParameter("admin_password");
//		登録した日の日時など情報を取得する処理
		LocalDateTime add_date = LocalDateTime.now();
//		DB接続処理
		AdminDAO dao=new AdminDAO();

//		インサート実行処理
		Admin admin=dao.insert(name, email, password, add_date);

//		returnする正常時終了時のJSP
		try (
			return "admin.jsp"
		)catch (
			//エラーのアラートを表示


//			returnエラー時のJSP
			return "add_admin.jsp";
		)


	}
}
