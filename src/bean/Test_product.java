package bean;

import java.sql.Date;

public class Test_product implements java.io.Serializable{
//	試供品ID
	private int id;
//	商品ID
	private int pripro_id;
//	カテゴリID
	private int product_category_id;
//	試供品名
	private String testpro_name;
//	試供品価格
	private int test_price;
//	追加日時
	private Date adding_time;
//	削除日時
	private Date deleting_time;
//	更新日時
	private Date update_time;
//	商品説明
	private String product_description;
//	登録在庫数
	private int regiinvqua;
//	削除フラグ
	private boolean flag;
//	画像
	private String image_filename;
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
	 * @return pripro_id
	 */
	public int getPripro_id() {
		return pripro_id;
	}
	/**
	 * @param pripro_id セットする pripro_id
	 */
	public void setPripro_id(int pripro_id) {
		this.pripro_id = pripro_id;
	}
	/**
	 * @return product_category_id
	 */
	public int getProduct_category_id() {
		return product_category_id;
	}
	/**
	 * @param product_category_id セットする product_category_id
	 */
	public void setProduct_category_id(int product_category_id) {
		this.product_category_id = product_category_id;
	}
	/**
	 * @return testpro_name
	 */
	public String getTestpro_name() {
		return testpro_name;
	}
	/**
	 * @param testpro_name セットする testpro_name
	 */
	public void setTestpro_name(String testpro_name) {
		this.testpro_name = testpro_name;
	}
	/**
	 * @return test_price
	 */
	public int getTest_price() {
		return test_price;
	}
	/**
	 * @param test_price セットする test_price
	 */
	public void setTest_price(int test_price) {
		this.test_price = test_price;
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
	 * @return product_description
	 */
	public String getProduct_description() {
		return product_description;
	}
	/**
	 * @param product_description セットする product_description
	 */
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	/**
	 * @return regiinvqua
	 */
	public int getRegiinvqua() {
		return regiinvqua;
	}
	/**
	 * @param regiinvqua セットする regiinvqua
	 */
	public void setRegiinvqua(int regiinvqua) {
		this.regiinvqua = regiinvqua;
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
