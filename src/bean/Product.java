package bean;

import java.sql.Date;

//商品テーブル
public class Product implements java.io.Serializable  {
//	商品Id
	private int id;
//	企業Id
	private int company_id;
//	本商品
	private int original_products_id;
//	商品カテゴリ
	private int product_category_id;
//	商品名
	private String product_name;
//	単価
	private int unit_price;
//	追加日時
	private Date adding_time;
//	削除日時
	private Date deleting_time;
//	更新日時
	private Date update_time;
//	商品説明
	private String product_description;
//	カテゴリ
	private String category;
//	登録在庫数
	private int regiinvqua;
//	商品概要
	private String product_overview;
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
	 * @return original_products_id
	 */
	public int getOriginal_products_id() {
		return original_products_id;
	}
	/**
	 * @param original_products_id セットする original_products_id
	 */
	public void setOriginal_products_id(int original_products_id) {
		this.original_products_id = original_products_id;
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
	 * @return product_name
	 */
	public String getProduct_name() {
		return product_name;
	}
	/**
	 * @param product_name セットする product_name
	 */
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	/**
	 * @return unit_price
	 */
	public int getUnit_price() {
		return unit_price;
	}
	/**
	 * @param unit_price セットする unit_price
	 */
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
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
	 * @return category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category セットする category
	 */
	public void setCategory(String category) {
		this.category = category;
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
	 * @return product_overview
	 */
	public String getProduct_overview() {
		return product_overview;
	}
	/**
	 * @param product_overview セットする product_overview
	 */
	public void setProduct_overview(String product_overview) {
		this.product_overview = product_overview;
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
