package bean;
//住所クラス
public class Address implements java.io.Serializable  {
//	ID
private int id;
//ユーザID
private int user_id;
//住所
private String address;
//電話番号
private String phone_number;
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
}
