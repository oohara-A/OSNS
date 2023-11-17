package bean;

import java.sql.Date;

public class Company implements java.io.Serializable  {
//	企業ID
	private int id;
//	企業名
	private String company_name;
//	住所
	private String address;
//	パスワード
	private String password;
//	会社画像
	private String company_image;
//メールアドレス
	private String email;
//	氏名
	private String name;
//	電話番号
	private String phone_number;
//追加日時
	private Date adding_time;
//	削除日時
	private Date deleting_time;
//	更新日時
	private Date update_time;
//	削除フラグ
	private String flag;
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
	 * @return company_name
	 */
	public String getCompany_name() {
		return company_name;
	}
	/**
	 * @param company_name セットする company_name
	 */
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	/**
	 * @return address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address セットする address
	 */
	public void setAddress(String address) {
		this.address = address;
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
	 * @return company_image
	 */
	public String getCompany_image() {
		return company_image;
	}
	/**
	 * @param company_image セットする company_image
	 */
	public void setCompany_image(String company_image) {
		this.company_image = company_image;
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
	 * @return phone_number
	 */
	public String getPhone_number() {
		return phone_number;
	}
	/**
	 * @param phone_number セットする phone_number
	 */
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
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
	public String getFlag() {
		return flag;
	}
	/**
	 * @param flag セットする flag
	 */
	public void setFlag(String flag) {
		this.flag = flag;
	}

}
