package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Review;
import bean.Review_image;
import bean.Review_video;

//レビュー表示用
public class ReviewDAO extends DAO{
	public Review select(int user_id, int pro_id) throws Exception{
		Review review=new Review();
		Review_image re_image = new Review_image();
		Review_video re_video = new Review_video();
		//データベース接続
		Connection con=getConnection();
		PreparedStatement st;
		//SQL文レビュー情報を持ってくる
		st=con.prepareStatement(
			"select * from review INNER JOIN review_video on review.review_id = review_video.review_id "
			+ "INNER JOIN review_image on review.review_id = review_image WHERE product_id = ? and user_id =?");
		st.setInt(1, pro_id);
		st.setInt(2, user_id);
		//SQL文実行
		ResultSet rs=st.executeQuery();
		st.close();
		con.close();
//データベースからレビュー情報を取得
		while (rs.next()) {
			review.setReview_id(rs.getInt("review_id"));
			review.setProduct_id(rs.getInt("product_id"));
			review.setUser_id(rs.getInt("user_id"));
			review.setRating(rs.getInt("rating"));
			review.setReview_title(rs.getString("review_title"));
			review.setReviewbody(rs.getString("reviewbody"));
			re_image.setImage_filename(rs.getString("image_filename"));
			re_video.setVideo_filename(rs.getString("video_filename"));
			review.setRevi_image(re_image);
			review.setRevi_video(re_video);
		}
		//データベース接続切断
		st.close();
		con.close();
//レビュー情報
		return review ;
	}

//レビュー投稿処理
	public boolean Postedreview(int user_id ,int pro_id, String body,int rating,Date submissiondate) throws Exception{
		//データベース接続
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement(
				"insert into review(deleting_time) values(?) where product_id =?");
//        削除日時
		return false;

	}
	}

