package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import tool.Action;
//レビュー投稿
public class PostedreviewAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		@SuppressWarnings("unchecked")
		List<User> user = (List<User>) session.getAttribute("user");
//		ユーザーID取得
		int user_id = 0;
		for(User u :user){
			user_id = u.getId();
			break;
		}
//商品ID
		int pro_id = Integer.parseInt(request.getParameter("id"));
//		レビュー本文
		String body = request.getParameter("review_input");
//		評価
		int rating = Integer.parseInt(request.getParameter("review_index"));
//投稿日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date submissiondate = java.sql.Date.valueOf(formattedDate);

//		レビュー時の投稿したい画像
		String url = "";

//		レビュー時の投稿したい動画
		String video_url = "";


		return "review.jsp";
	}

}
