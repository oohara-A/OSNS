package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyDAO;
import tool.Action;

public class Deregister_companyAction extends Action{
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		//企業ID
        int companyId = Integer.parseInt(request.getParameter("companyId"));

        // ログインされている場合
        if (session.getAttribute("login_company")!=null) {
        	CompanyDAO dao=new CompanyDAO();
        	boolean delete_company=dao.delete_company(companyId);

        	session.setAttribute("companyDelete", delete_company);

        	// company_top_page.jspをフォワード先に指定
        	return "company_top_page.jsp";

        // ログインされていない場合
        } else {
        	// com_login_error.jspをフォワード先に指定
        	return "com_login_error.jsp";
        }
	}
}
