package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import dao.AdminDAO;
import tool.Action;

public class ShowcompanyAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// 企業名
		String company_name=request.getParameter("company_name");
		if (company_name==null) company_name="";

		// ログインされている場合
		if (session.getAttribute("login_admin")!=null){
            // DB接続処理
            AdminDAO dao = new AdminDAO();

            // サーチ実行処理
            List<Company> company_list = dao.show_company(company_name);

            session.setAttribute("companyList", company_list);

            // copany_info.jspをフォワード先に指定
            return "company_info.jsp";

        // ログインされていない場合
        } else {
            // admin_login_error.jspをフォワード先に指定
            return "admin_login_error.jsp";
        }
	}
}
