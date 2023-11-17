package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;

public class RemoveAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

        String adminId = request.getParameter("adminId"); // 削除対象の管理者ID

        if (adminId != null && !adminId.isEmpty()) {
            AdminDAO adminDAO = new AdminDAO();


            if (success) {
                return "delete_admin.jsp"; // 削除成功時に管理者一覧ページにリダイレクト
            } else {
//                request.setAttribute("errorMessage", "管理者の削除に失敗しました。");
//                return "error.jsp"; // エラー画面に遷移するためのJSP名を返す

            	// エラーアラートの表示


            }
        } else {
//            request.setAttribute("errorMessage", "削除対象の管理者が指定されていません。");
//            return "error.jsp"; // エラー画面に遷移するためのJSP名を返す

        	//　エラーアラートの表示


        }
	}
}
