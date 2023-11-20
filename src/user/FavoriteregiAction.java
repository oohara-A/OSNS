package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import tool.Action;
//お気に入り追加
public class FavoriteregiAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		//追加するを押した商品のid取得
		int id=Integer.parseInt(request.getParameter("id"));
		List<User> uesr_id = (List<User>) session.getAttribute("user");

		for(User i : uesr_id){
			id = i.getId();
		}

		return null;
	}

}
