package bean;

import java.sql.Date;
//メールクラス
public class Email implements java.io.Serializable {
//	メールID
private int	 email_id;
//送信者ID（自分のユーザID）
private int	 sender;
//受信者ID（相手のユーザID）
private int	 recipient;
//件名
private String	subject;
//本文
private String	 body;
//状態
private String	 status;
//送信日時
private Date sending_time;
//削除日時
private Date deleting_time;
//削除フラグ
private boolean flag;
/**
 * @return email_id
 */
public int getEmail_id() {
	return email_id;
}
/**
 * @param email_id セットする email_id
 */
public void setEmail_id(int email_id) {
	this.email_id = email_id;
}
/**
 * @return sender
 */
public int getSender() {
	return sender;
}
/**
 * @param sender セットする sender
 */
public void setSender(int sender) {
	this.sender = sender;
}
/**
 * @return recipient
 */
public int getRecipient() {
	return recipient;
}
/**
 * @param recipient セットする recipient
 */
public void setRecipient(int recipient) {
	this.recipient = recipient;
}
/**
 * @return subject
 */
public String getSubject() {
	return subject;
}
/**
 * @param subject セットする subject
 */
public void setSubject(String subject) {
	this.subject = subject;
}
/**
 * @return body
 */
public String getBody() {
	return body;
}
/**
 * @param body セットする body
 */
public void setBody(String body) {
	this.body = body;
}
/**
 * @return status
 */
public String getStatus() {
	return status;
}
/**
 * @param status セットする status
 */
public void setStatus(String status) {
	this.status = status;
}
/**
 * @return sending_time
 */
public Date getSending_time() {
	return sending_time;
}
/**
 * @param sending_time セットする sending_time
 */
public void setSending_time(Date sending_time) {
	this.sending_time = sending_time;
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
