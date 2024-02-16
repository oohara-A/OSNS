package bean;

import java.sql.Date;

public class User implements java.io.Serializable {
//	ユーザId
	private int id;
//	氏名
	private String name;
//	メールアドレス
	private String email;
//	パスワード
	private String password;
//	ユーザー名
	private String user_name;
//	追加日時
	private Date  adding_time;
//	削除日時
	private Date deleting_time;
//	更新日時
	private Date update_time;
//	削除フラグ
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
	 * @return name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name セットする name
	 */
	public void setName(String name) {
		this.name = name;
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
	 * @return user_name
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * @param user_name セットする user_name
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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