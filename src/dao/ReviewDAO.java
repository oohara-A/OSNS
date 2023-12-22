package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.annotation.MultipartConfig;

import bean.Review;
import bean.Review_image;
import bean.Review_video;
@MultipartConfig
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
			+ "INNER JOIN review_image on review.review_id = review_image WHERE product_id = ? and flag = 0");
		st.setInt(1, pro_id);
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
	public boolean Postedreview(int user_id ,int pro_id, String body,int rating,Date submissiondate, String image, String video_url) throws Exception{
		//データベース接続
		Connection con=getConnection();
		PreparedStatement st;
		 st=con.prepareStatement(
				"insert into review(product_id,user_id,rating,reviewbody,submissiondate) values(?,?,?,?,?)");
		st.setInt(1, pro_id);
		st.setInt(2, user_id);
		st.setInt(3, rating);
		st.setString(4, body);
		st.setDate(5, submissiondate);
		st.executeUpdate();

		st=con.prepareStatement(
					"select * from review where user_id = ? and product_id = ?");
		st.setInt(1, user_id);
		st.setInt(2, pro_id);
		ResultSet rs=st.executeQuery();
		int revew_id = 0;
		while (rs.next()) {
			revew_id = rs.getInt("REVIEW_ID");
		}


		st=con.prepareStatement(
				"insert into REVIEW_IMAGE(review_id,image_filename) values(?,?) ");
		st.setInt(1,revew_id);
		st.setString(2,image );
		st.executeUpdate();

		st=con.prepareStatement(
				"insert into REVIEW_VIDEO(review_id,video_filename) values(?,?) ");
		st.setInt(1,revew_id);
		st.setString(2,video_url );
		st.executeUpdate();
		st.close();
		con.close();

		return true;

	}


//	レビュー削除処理
	public boolean review_del(int review_id)throws Exception{
//		データベース接続
		Connection con = getConnection();
		boolean flag = true;
		PreparedStatement st = con.prepareStatement(
				"update user set flag = ? where review_id =?"
				);
		st.setBoolean(1, flag);
		st.setInt(2,review_id );
		st.executeUpdate();
		st.close();
		con.close();
		return true;
	}

//	レビュー更新処理
	public boolean review_up(int review_id,int user_id, int pro_id, String reviewbody, int rating)throws Exception{
//		データベース接続
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement(
				"update review set rating = ?,reviewbody = ?  where review_id =? and product_id = ? and user_id = ?");
		st.setInt(1, rating);
		st.setString(2, reviewbody);
		st.setInt(3, review_id);
		st.setInt(4, pro_id);
		st.setInt(5, user_id);
		st.executeUpdate();
		st.close();
		con.close();
		return true;

	}
}
