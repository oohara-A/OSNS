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

public class AdressdispAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("user");
		if(user == null){
			return "login_error.jsp";
		}
		int user_id = user.getId();
		UserDAO dao = new UserDAO();
		List<Address> address = new ArrayList<>();
		address = dao.Addressdisp(user_id);
		session.setAttribute("Address", address);
		// TODO 自動生成されたメソッド・スタブ
		return "user_address.jsp";
	}

}
