package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowcompanyAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// 企業名
		String company_name=request.getParameter("company_name");

		// 企業名がnullでないかチェック
        if (company_name != null && !company_name.isEmpty()) {
            // DB接続処理
            CompanyDAO dao = new CompanyDAO();

            // サーチ実行処理
            Company company = dao.search(company_name);

            session.setAttribute("company", company);

            return "company_info.jsp";
        } else {
            // 企業名がnullまたは空の場合
            return "company_info.jsp";
        }
	}
}
