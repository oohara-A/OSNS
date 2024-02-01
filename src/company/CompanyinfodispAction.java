package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Company;
import dao.CompanyDAO;
import tool.Action;

public class CompanyinfodispAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// セッションを開始
		HttpSession session=request.getSession();
		Company company = new Company();
		CompanyDAO dao = new CompanyDAO();
		Company login_ifo=(Company)session.getAttribute("login_company");
		int com_id = login_ifo.getId();
		company = dao.select_comp(com_id);
		session.setAttribute("company_info", company);

		return "company_info_edit.jsp";
	}

}
