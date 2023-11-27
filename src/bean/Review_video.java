package bean;

public class Review_video extends Review implements java.io.Serializable{
//	レビュー動画ID
private int	id;
//レビューID
private int	 review_id;
//動画ファイル名
private String	video_filename;
//削除フラグ
private boolean  flag;
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
 * @return video_filename
 */
public String getVideo_filename() {
	return video_filename;
}
/**
 * @param video_filename セットする video_filename
 */
public void setVideo_filename(String video_filename) {
	this.video_filename = video_filename;
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
