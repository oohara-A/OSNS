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
//クーポン追加
public class CouponaddAction extends Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		session使えるようにする
		HttpSession session = request.getSession();
		System.out.println("couponactionです");
		int user_id = 0;
		User user = (User)session.getAttribute("user");
		user_id = user.getId();
		UserDAO dao = new UserDAO();
		List<Coupon> coupon_list = new ArrayList<Coupon>();
		coupon_list = dao.Coupon_Add(user_id);
		System.out.println(coupon_list);
		List<Coupon> heve_coupon = new ArrayList<Coupon>();
		// TODO 自動生成されたメソッド・スタブ
		return "index.jsp";
	}

}
