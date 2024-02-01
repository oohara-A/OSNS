package bean;

public class Item implements java.io.Serializable {
	// BeanはProductオブジェクトをプロパティとして持つ
	private Product product;
	private int count;

	// セッタとゲッタの宣言
	public Product getProduct() {
		return product;
	}
	public int getCount() {
		return count;
	}

	public void setProduct(Product product) {
		this.product=product;
	}
	public void setCount(int count) {
		this.count=count;
	}
}
