package user;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Review;
import bean.User;
import dao.ReviewDAO;
import tool.Action;
//レビュー投稿
@SuppressWarnings("unused")
@MultipartConfig
public class PostedreviewAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception,ServletException {
		Review rev = new Review();
//		セッションを使えるようにする
		//sessionの情報を取得
		HttpSession session=request.getSession();
		@SuppressWarnings("unchecked")
		User user =(User) session.getAttribute("user");
//		ユーザーID取得
		int user_id = 0;
		user_id = user.getId();
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
		Part part = request.getPart("part");

		String filename = rev.getFileName(part);
		System.out.println(filename);
		 String[] filenames = filename.split("\\\\"); // Windowsの場合
		List<String> filenames2 = new ArrayList<>();

		for (String file : filenames) {
		    filenames2.add(file);
		}

		int len = filenames2.size();
		String filename2 = filenames2.get(len - 1);
		System.out.println(filename2);

		 String uploadDirectory = System.getProperty("user.dir") + File.separator ;
		 request.getContextPath();
		// アップロードする場所 C:\work\pleiades\workspace\OSNS\image
		part.write("C:\\\\work\\\\pleiades\\\\workspace\\\\OSNS\\\\"+"image" +"\\\\" + filename2);




//		ファイル名を取得
//		String filename=Paths.get(part.getSubmittedFileName()).getFileName().toString();
//		String url = "";
//
//		レビュー時の投稿したい動画
		String video_url = "";
		ReviewDAO dao = new ReviewDAO();
		boolean flag = dao.Postedreview(user_id, pro_id, body, rating, submissiondate,filename2,video_url);

//レビューページに遷移
		return "index.jsp";
	}

}

