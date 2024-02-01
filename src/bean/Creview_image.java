package bean;
//企業レビュー画像
public class Creview_image implements java.io.Serializable {
//企業画像ID
private int	 id;
//企業ID
private int	 company_id;
//画像ファイル名
private String	image_filename;
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
