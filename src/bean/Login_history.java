package bean;

import java.sql.Date;

public class Login_history implements java.io.Serializable  {
//	ログイン履歴ID
private int id;
//ユーザID
private int	 user_id;
//ログイン日時
private Date login_date;
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
 * @return login_date
 */
public Date getLogin_date() {
	return login_date;
}
/**
 * @param login_date セットする login_date
 */
public void setLogin_date(Date login_date) {
	this.login_date = login_date;
}

}
