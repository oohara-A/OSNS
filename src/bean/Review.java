package bean;

import java.sql.Date;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
@MultipartConfig
public class Review  implements java.io.Serializable {
//	レビューID
private int	 review_id;
//商品ID
private int	 product_id;
//ユーザID
private int	 user_id;
//評価
private int	 rating;
//レビュータイトル
private String review_title;
//レビュー本文
private String	reviewbody;
//投稿日時
private Date submissiondate;
//削除日時
private Date deleting_time;
//削除フラグ
private int	 flag;

private String review_image;

/**
 * @return review_image
 */
public String getReview_image() {
	return review_image;
}
/**
 * @param review_image セットする review_image
 */
public void setReview_image(String review_image) {
	this.review_image = review_image;
}

private Review_video revi_video;

private Part part;
/**
 * @return part
 */
public Part getPart() {
	return part;
}
/**
 * @param part セットする part
 */
public void setPart(Part part) {
	this.part = part;
}
/**
 * @return revi_video
 */
public Review_video getRevi_video() {
	return revi_video;
}
/**
 * @param revi_video セットする revi_video
 */
public void setRevi_video(Review_video revi_video) {
	this.revi_video = revi_video;
}
/**
 * @return review_id
 */
public int getReview_id() {
	return review_id;
}
/**
 * @param review_id セットする review_id
 */
public void setReview_id(int review_id) {
	this.review_id = review_id;
}
/**
 * @return product_id
 */
public int getProduct_id() {
	return product_id;
}
/**
 * @param product_id セットする product_id
 */
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
/**
 * @return user_id
 */
public int getUser_id() {
	return user_id;
}
/**
 * @param user_id セットする user_id
 */
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
/**
 * @return rating
 */
public int getRating() {
	return rating;
}
/**
 * @param rating セットする rating
 */
public void setRating(int rating) {
	this.rating = rating;
}
/**
 * @return review_title
 */
public String getReview_title() {
	return review_title;
}
/**
 * @param review_title セットする review_title
 */
public void setReview_title(String review_title) {
	this.review_title = review_title;
}
/**
 * @return reviewbody
 */
public String getReviewbody() {
	return reviewbody;
}
/**
 * @param reviewbody セットする reviewbody
 */
public void setReviewbody(String reviewbody) {
	this.reviewbody = reviewbody;
}
/**
 * @return submissiondate
 */
public Date getSubmissiondate() {
	return submissiondate;
}
/**
 * @param submissiondate セットする submissiondate
 */
public void setSubmissiondate(Date submissiondate) {
	this.submissiondate = submissiondate;
}
/**
 * @return deleting_time
 */
public Date getDeleting_time() {
	return deleting_time;
}
/**
 * @param deleting_time セットする deleting_time
 */
public void setDeleting_time(Date deleting_time) {
	this.deleting_time = deleting_time;
}
/**
 * @return flag
 */
public int getFlag() {
	return flag;
}
/**
 * @param flag セットする flag
 */
public void setFlag(int flag) {
	this.flag = flag;
}

public String getFileName(Part part) {
	 String[] headerArrays = part.getHeader("Content-Disposition").split(";");
	 String fileName = null;
	 for (String head : headerArrays) {
	 if (head.trim().startsWith("filename")) {
	 fileName = head.substring(head.indexOf('"')).replaceAll("\"", "");
	 }
	 }
	 return fileName;
	 }
}
