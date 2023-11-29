package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;
import dao.AdminDAO;

public class ShowcompanyAction {
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
            List<Admin> company_list = dao.showcompany(company_name);

            session.setAttribute("companyList", company_list);

            // copany_info.jspをフォワード先に指定
            return "company_info.jsp";

        // ログインされていない場合
        } else {
        	//エラーアラートを表示


            // copany_info.jspをフォワード先に指定
            return "company_info.jsp";
        }
	}
}
