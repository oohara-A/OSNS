package bean;

public class Testpro_category implements java.io.Serializable {
//	商品カテゴリID
	private int product_category_id ;
//商品Id
	private int product_id;
//	カテゴリ名称
	private String category_name;
//	アイコン画像
	private String icon_image;
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
	 * @return category_name
	 */
	public String getCategory_name() {
		return category_name;
	}
	/**
	 * @param category_name セットする category_name
	 */
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	/**
	 * @return icon_image
	 */
	public String getIcon_image() {
		return icon_image;
	}
	/**
	 * @param icon_image セットする icon_image
	 */
	public void setIcon_image(String icon_image) {
		this.icon_image = icon_image;
	}

}
