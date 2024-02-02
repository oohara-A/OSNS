package bean;

import java.sql.Date;

public class Product_cart extends Product  implements java.io.Serializable {
//	商品カートID
private int cart_id;
//ユーザID
private int user_id;
/**
 * @return cart_id
 */
public int getCart_id() {
	return cart_id;
}
/**
 * @param cart_id セットする cart_id
 */
public void setCart_id(int cart_id) {
	this.cart_id = cart_id;
}
//商品ID
private int product_id;
//企業ID
private int company_id;
//発注個数
private int order_count;
//追加日時
private Date adding_time;
//削除日時
private Date deleting_time;
//更新日時
private Date update_time;

private String file_name;
//削除フラグ
private boolean deletion_flag;

private Product product;//プロダクト型の変数
<<<<<<< HEAD
//↓追加
private Pro_image pro_image;
//↓追加
private int total;
=======
private Pro_image pro_image;
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
/**
 * @return pro_image
 */
public Pro_image getPro_image() {
	return pro_image;
}
/**
<<<<<<< HEAD
 * @return total
 */
public int getTotal() {
	return total;
}

/**
 * @param total セットする total
 */
public void setTotal(int total) {
	this.total = total;
}
/**
=======
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
 * @param pro_image セットする pro_image
 */
public void setPro_image(Pro_image pro_image) {
	this.pro_image = pro_image;
}
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

<<<<<<< HEAD
=======
/**
 * @return file_name
 */
public String getFile_name() {
	return file_name;
}
/**
 * @param file_name セットする file_name
 */
public void setFile_name(String file_name) {
	this.file_name = file_name;
}

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
/**
 * @return file_name
 */
public String getFile_name() {
	return file_name;
}
/**
 * @param file_name セットする file_name
 */
public void setFile_name(String file_name) {
	this.file_name = file_name;
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
 * @return order_count
 */
public int getOrder_count() {
	return order_count;
}
/**
 * @param order_count セットする order_count
 */
public void setOrder_count(int order_count) {
	this.order_count = order_count;
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
 * @return deletion_flag
 */
public boolean isDeletion_flag() {
	return deletion_flag;
}
/**
 * @param deletion_flag セットする deletion_flag
 */
public void setDeletion_flag(boolean deletion_flag) {
	this.deletion_flag = deletion_flag;
}


}
