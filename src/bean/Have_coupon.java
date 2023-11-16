package bean;

public class Have_coupon implements java.io.Serializable {
//	ID
private int	id;
//クーポンID
private int	coupon_id;
//ユーザID
private int	user_id;
//クーポンコード
private String	coupon_code;
//使用済みフラグ
private boolean used_flag;
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
 * @return coupon_id
 */
public int getCoupon_id() {
	return coupon_id;
}
/**
 * @param coupon_id セットする coupon_id
 */
public void setCoupon_id(int coupon_id) {
	this.coupon_id = coupon_id;
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
 * @return coupon_code
 */
public String getCoupon_code() {
	return coupon_code;
}
/**
 * @param coupon_code セットする coupon_code
 */
public void setCoupon_code(String coupon_code) {
	this.coupon_code = coupon_code;
}
/**
 * @return used_flag
 */
public boolean isUsed_flag() {
	return used_flag;
}
/**
 * @param used_flag セットする used_flag
 */
public void setUsed_flag(boolean used_flag) {
	this.used_flag = used_flag;
}

}
