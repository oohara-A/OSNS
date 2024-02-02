package bean;
//商品画像クラス
public class Pro_image extends Product implements java.io.Serializable  {
//	商品画像Id
	private int pripro_image_id;
//	商品ID
	private int product_id;
//	画像ファイル名
	private String image_filename;
//	削除フラグ
	private boolean flag;
	/**
	 * @return pripro_image_id
	 */
	public int getPripro_image_id() {
		return pripro_image_id;
	}
	/**
	 * @param pripro_image_id セットする pripro_image_id
	 */
	public void setPripro_image_id(int pripro_image_id) {
		this.pripro_image_id = pripro_image_id;
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
