package bean;

public class Purchase_history_pro implements java.io.Serializable  {
//購入履歴商品ID
private int	pur_his_pro_id;
//購入履歴ID
private	int purchase＿id;
//商品ID
private	int item_id;
//個数
private	int count;
/**
 * @return pur_his_pro_id
 */
public int getPur_his_pro_id() {
	return pur_his_pro_id;
}
/**
 * @param pur_his_pro_id セットする pur_his_pro_id
 */
public void setPur_his_pro_id(int pur_his_pro_id) {
	this.pur_his_pro_id = pur_his_pro_id;
}
/**
 * @return purchase＿id
 */
public int getPurchase＿id() {
	return purchase＿id;
}
/**
 * @param purchase＿id セットする purchase＿id
 */
public void setPurchase＿id(int purchase＿id) {
	this.purchase＿id = purchase＿id;
}
/**
 * @return item_id
 */
public int getItem_id() {
	return item_id;
}
/**
 * @param item_id セットする item_id
 */
public void setItem_id(int item_id) {
	this.item_id = item_id;
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

}
