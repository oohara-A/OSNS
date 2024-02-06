package user;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Product;
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
		if(user==null){
			String messege = "ログインしてください";
			return "user_login.jsp";
		}
		List<Product> pro =(List<Product>) session.getAttribute("product_detail");
//		ユーザーID取得
		int user_id = 0;
		user_id = user.getId();
//商品ID
		int pro_id = 0;
		for(Product i : pro){
			pro_id = i.getId();
			break;
		}

//		レビュー本文
		String body = request.getParameter("reviews");
//		評価
		int rating = Integer.parseInt(request.getParameter("ratings"));
//投稿日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date submissiondate = java.sql.Date.valueOf(formattedDate);

//		レビュー時の投稿したい画像
		Part part = null;
		String filename2 = "";
		part = request.getPart("part");
		String filename = rev.getFileName(part);
		if(filename.isEmpty()){
			filename2 = null;
		}else{

			System.out.println(filename);
			 String[] filenames = filename.split("\\\\"); // Windowsの場合
			List<String> filenames2 = new ArrayList<>();

			for (String file : filenames) {
			    filenames2.add(file);
			}

			int len = filenames2.size();
			filename2 = filenames2.get(len - 1);
			System.out.println(filename2);

			//アップロードするフォルダ
			ServletContext context  = request.getServletContext();

			String uploadDirectory=context.getRealPath("/assets/");

			//ファイルの保存先のパス
			String filePath = Paths.get(uploadDirectory, "review_image", filename).toString();
			//実際にファイルが保存されるパス確認
			System.out.println(filePath);
			part.write(filePath);

		}


	//		レビュー時の投稿したい動画
			Part part2 = null;
			String filename5 = "";
			part2 = request.getPart("part2");
			System.out.println("動画ファイル１"+part2);
			String filename3 = rev.getFileName(part2);
			if(filename3.isEmpty()){
				filename5 = null;
			}else{
				System.out.println("動画ファイル2"+filename3);
				 String[] filenames3 = filename3.split("\\\\"); // Windowsの場合
				List<String> filenames4 = new ArrayList<>();

				for (String f : filenames3) {
				    filenames4.add(f);
				}

				int len2 = filenames4.size();
				filename5 = filenames4.get(len2 - 1);
				System.out.println("動画ファイル名"+filename5);
				//アップロードするフォルダ
				ServletContext context  = request.getServletContext();

				String uploadDirectory=context.getRealPath("/assets/");

				//ファイルの保存先のパス
				String filePath = Paths.get(uploadDirectory, "review_video", filename5).toString();
				//実際にファイルが保存されるパス確認
				System.out.println(filePath);


				// ファイルをアップロード先のディレクトリに保存
		        try (InputStream input = part2.getInputStream()) {
		        	//アップロードするフォルダ
					ServletContext context2  = request.getServletContext();
					String uploadDirectory2=context.getRealPath("/assets/");
					//ファイルの保存先のパス
					Path  filePath2 = Paths.get(uploadDirectory, "review_video", filename5);

		            Files.copy(input, filePath2, StandardCopyOption.REPLACE_EXISTING);
		        }
//			part.write(uploadDirectory +File.separator + filename5);

		}

		ReviewDAO dao = new ReviewDAO();
		boolean flag = dao.Postedreview(user_id, pro_id, body, rating, submissiondate,filename2,filename5);

		List<Review> reviews = dao.select(pro_id);


		session.setAttribute("user_review", reviews);
//レビューページに遷移
		return "product_detail.jsp";
	}

}

