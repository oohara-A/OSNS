package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowuserAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// ユーザ名
		String user_name=request.getParameter("user_name");

		// ユーザ名がnullでないかチェック
        if (user_name != null && !user_name.isEmpty()) {
            // DB接続処理
            UserDAO dao = new UserDAO();

            // サーチ実行処理
            User user = dao.search(user_name);

            session.setAttribute("user", user);

            return "admin_manage_user.jsp";
        } else {
            // ユーザ名がnullまたは空の場合
            return "admin_manage_user.jsp";
        }
	}
}
