package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Address;
import bean.User;
import dao.UserDAO;
import tool.Action;

public class AddressAddAction  extends Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("user");

		UserDAO dao = new UserDAO();
		List<Address> address = new ArrayList<>();
		String addre = "";
		if(user!=null){
			int user_id = 0;
			user_id = user.getId();
	//		県名
			String prefecture = request.getParameter("prefecture");
	//		市町村
			String municipalities = request.getParameter("municipalities");
	//		番地
			String street = request.getParameter("street");
			addre = addre+prefecture+municipalities+ street;
			System.out.println(addre);

			address = dao.AddressAdd(user_id, addre);
			session.setAttribute("Address", address);
			return "user_address.jsp";
		}
		return "user_login.jsp";
	}

}
