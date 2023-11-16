package bean;
//お気に入りクラス
public class Favorite implements java.io.Serializable {
//	id
private int	 id;
//ユーザID
private int	 user_id;
//商品ID
private int	 product_id;
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
