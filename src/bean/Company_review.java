package bean;

import java.sql.Date;

//企業レビュー
public class Company_review implements java.io.Serializable{
//	id
private int	 id;
//企業ID
private int	 company_id;
//レビュータイトル
private String	review_title;
//レビュー本文
private String review_body;
//画像
private String	image;
//投稿日時
private Date submissiondate;
//削除日時
private Date deleting_time;
//削除フラグ
private boolean flag;
/**
 * @return id
 */
public int getId() {
	return id;
}
/**
 * @param id セットする id
 */
public void setId(int id) {
	this.id = id;
}
/**
 * @return company_id
 */
public int getCompany_id() {
	return company_id;
}
/**
 * @param company_id セットする company_id
 */
public void setCompany_id(int company_id) {
	this.company_id = company_id;
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
 * @return review_body
 */
public String getReview_body() {
	return review_body;
}
/**
 * @param review_body セットする review_body
 */
public void setReview_body(String review_body) {
	this.review_body = review_body;
}
/**
 * @return image
 */
public String getImage() {
	return image;
}
/**
 * @param image セットする image
 */
public void setImage(String image) {
	this.image = image;
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
public boolean isFlag() {
	return flag;
}
/**
 * @param flag セットする flag
 */
public void setFlag(boolean flag) {
	this.flag = flag;
}

}
