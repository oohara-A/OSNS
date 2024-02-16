package bean;
//管理者クラス

import java.sql.Date;

public class Admin implements java.io.Serializable  {
//管理者ID
private int id;
//管理者名
private String admin_name;
//パスワード
private String password;
/**
 * @return admin_name
 */
public String getAdmin_name() {
	return admin_name;
}
/**
 * @param admin_name セットする admin_name
 */
public void setAdmin_name(String admin_name) {
	this.admin_name = admin_name;
}
//メールアドレス
private String email;
//追加日時
private Date adding_time;
//削除日時
private Date deleting_time;
//更新日時
private Date update_time;
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
 * @return password
 */
public String getPassword() {
	return password;
}
/**
 * @param password セットする password
 */
public void setPassword(String password) {
	this.password = password;
}
/**
 * @return email
 */
public String getEmail() {
	return email;
}
/**
 * @param email セットする email
 */
public void setEmail(String email) {
	this.email = email;
}
/**
 * @return adding_time
 */
public Date getAdding_time() {
	return adding_time;
}
/**
 * @param adding_time セットする adding_time
 */
public void setAdding_time(Date adding_time) {
	this.adding_time = adding_time;
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
 * @return update_time
 */
public Date getUpdate_time() {
	return update_time;
}
/**
 * @param update_time セットする update_time
 */
public void setUpdate_time(Date update_time) {
	this.update_time = update_time;
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