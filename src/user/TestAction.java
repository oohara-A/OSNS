package user;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.Review;
import tool.Action;
//レビュー投稿
@SuppressWarnings("unused")
@MultipartConfig
public class TestAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception,ServletException {
		Review rev = new Review();
		String a = request.getParameter("reviews");
		System.out.println(a);
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
		 String path =request.getContextPath();
		 System.out.println(path);
		// アップロードする場所 C:\work\pleiades\workspace\OSNS\image
		part.write("C:\\\\Users\\\\adomin\\\\OneDrive - ooharastudent\\\\デスクトップ\\\\OSNS\\\\"+"image" +"\\\\" + filename2);


//		レビュー時の投稿したい動画
//		Part part2 = request.getPart("part2");

//		String filename3 = rev.getFileName(part);
//		System.out.println(filename);
//		 String[] filenames3 = filename.split("\\\\"); // Windowsの場合
//		List<String> filenames4 = new ArrayList<>();
//
//		for (String file : filenames2) {
//		    filenames4.add(file);
//		}
//
//		int len2 = filenames4.size();
//		String filename5 = filenames4.get(len - 1);
//		System.out.println(filename5);
		String filename5 = "";
//
//		 String uploadDirectory2 = System.getProperty("user.dir") + File.separator ;
////		 ファイル名に日時を足すミリ秒まで
//		// アップロードする場所 C:\work\pleiades\workspace\OSNS\image
//		part.write("C:\\\\work\\\\pleiades\\\\workspace\\\\OSNS\\\\"+"image" +"\\\\" + filename5);

//レビューページに遷移
		return "product_detail.jsp";
	}

}

