package bean;

import java.sql.Date;
//購入履歴クラス
public class Purchase_history extends Product implements java.io.Serializable {
//	購入ID
private int	id;
//企業Id
private int	company_id;
//ユーザID
private int	user_id;
//クーポンID
private String	coupon_id;
//購入金額
private int	purchase_price;
//電話番号
private	String phone_number;
//支払い方法
private	String paymentmethod;
//配送住所
private String	deladdress;
//キャンセル日時
private	Date cancel_time;
//購入日時
private Date purchase_time;
//キャンセルフラグ
private	boolean cancel_flag;
private int product_id;
private int count;
private String image_filename;

private String user_name;
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
 * @return product_id
 */
public int getProduct_id() {
	return product_id;
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
 * @return count
 */
public int getCount() {
	return count;
}
/**
 * @param count セットする count
 */
public void setCount(int count) {
	this.count = count;
}
/**
 * @param product_id セットする product_id
 */
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
private Product product;
/**
 * @return product
 */
public Product getProduct() {
	return product;
}
/**
 * @param product セットする product
 */
public void setProduct(Product product) {
	this.product = product;
}
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
 * @return coupon_id
 */
public String getCoupon_id() {
	return coupon_id;
}
/**
 * @param coupon_id セットする coupon_id
 */
public void setCoupon_id(String coupon_id) {
	this.coupon_id = coupon_id;
}
/**
 * @return purchase_price
 */
public int getPurchase_price() {
	return purchase_price;
}
/**
 * @param purchase_price セットする purchase_price
 */
public void setPurchase_price(int purchase_price) {
	this.purchase_price = purchase_price;
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
 * @return paymentmethod
 */
public String getPaymentmethod() {
	return paymentmethod;
}
/**
 * @param paymentmethod セットする paymentmethod
 */
public void setPaymentmethod(String paymentmethod) {
	this.paymentmethod = paymentmethod;
}
/**
 * @return deladdress
 */
public String getDeladdress() {
	return deladdress;
}
/**
 * @param deladdress セットする deladdress
 */
public void setDeladdress(String deladdress) {
	this.deladdress = deladdress;
}
/**
 * @return cancel_time
 */
public Date getCancel_time() {
	return cancel_time;
}
/**
 * @param cancel_time セットする cancel_time
 */
public void setCancel_time(Date cancel_time) {
	this.cancel_time = cancel_time;
}
/**
 * @return purchase_time
 */
public Date getPurchase_time() {
	return purchase_time;
}
/**
 * @param purchase_time セットする purchase_time
 */
public void setPurchase_time(Date purchase_time) {
	this.purchase_time = purchase_time;
}
/**
 * @return cancel_flag
 */
public boolean isCancel_flag() {
	return cancel_flag;
}
/**
 * @param cancel_flag セットする cancel_flag
 */
public void setCancel_flag(boolean cancel_flag) {
	this.cancel_flag = cancel_flag;
}


}
