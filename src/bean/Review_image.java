package bean;

import javax.servlet.annotation.MultipartConfig;

@MultipartConfig
public class Review_image extends Review implements java.io.Serializable {
//	レビュー画像ID
private int	id;
//レビューID
private int review_id;
//画像ファイル名
private String image_filename;
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
 * @return image_filename
 */
public String getImage_filename() {
	return image_filename;
}
/**
 * @param image_filename セットする image_filename
 */
public void setImage_filename(String image_filename) {
	this.image_filename = image_filename;
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
