package bean;

public class Coupon implements java.io.Serializable {
//クーポンID
private	int coupon_id;
//商品ID
private	int	product_id;
//効果
private	int	effect;
//coupon名称
private	String coupon_name;
//画像
private	String	image;
//couponコード
private	String	coupon_code;
//公開フラグ
private	boolean	flag;
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
 * @return product_id
 */
public int getProduct_id() {
	return product_id;
}
/**
 * @param product_id セットする product_id
 */
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
/**
 * @return effect
 */
public int getEffect() {
	return effect;
}
/**
 * @param effect セットする effect
 */
public void setEffect(int effect) {
	this.effect = effect;
}
/**
 * @return coupon_name
 */
public String getCoupon_name() {
	return coupon_name;
}
/**
 * @param coupon_name セットする coupon_name
 */
public void setCoupon_name(String coupon_name) {
	this.coupon_name = coupon_name;
}
/**
 * @return image
 */
public String getImage() {
	return image;
}
/**
 * @param image セットする image
 */
public void setImage(String image) {
	this.image = image;
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
