package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Coupon;
import bean.User;
import dao.UserDAO;
import tool.Action;

public class CoupondispAction extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int user_id = 0;
		User user = (User)session.getAttribute("user");
		if(user != null){
			user_id = user.getId();
		}
		UserDAO dao = new UserDAO();
		List<Coupon> have_coupon = new ArrayList<Coupon>();
		have_coupon = dao.Cooupon_view(user_id);
		if(have_coupon.isEmpty()){
			have_coupon=null;
			session.setAttribute("have_coupon", have_coupon);
		}else {
			session.setAttribute("have_coupon", have_coupon);
		}

		// TODO 自動生成されたメソッド・スタブ
		return "user_login_error.jsp";
	}

}
