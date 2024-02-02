package bean;

//企業レビュー動画
public class Creview_video implements java.io.Serializable {
//	企業動画ID
private int	id;
//企業ID
private int company_id;
//動画ファイル名
private String video_filename;
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
