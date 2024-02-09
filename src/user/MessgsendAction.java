package user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Email;
import bean.Product;
import bean.User;
import dao.EmaileDAO;
import tool.Action;
//メッセージ送信
public class MessgsendAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		session.removeAttribute("send_email");
		@SuppressWarnings("unchecked")
		User user =(User) session.getAttribute("user");
		List<Product> pro = (List<Product>) session.getAttribute("product_detail");
		if(user==null){
			return "login_error.jsp";
		}
//		商品名取得
			String pro_name ="";
		for(Product p:pro){
			 pro_name = p.getProduct_name()+"について";
			break;
		}


//		ユーザーID取得
		int user_id = 0;
		user_id = user.getId();
//  	相手のユーザID取得
		int id = Integer.parseInt(request.getParameter("user_id"));
//		メッセージ本文
		String body = request.getParameter("reply");
//		メッセージ返信日時日時
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = simpleDateFormat.format(date);
		java.sql.Date send_date = java.sql.Date.valueOf(formattedDate);
//		送信状態
		String status = "送信済み";
//		送信処理
		EmaileDAO dao = new EmaileDAO();
		boolean flag = dao.emaile_send(user_id, id, pro_name,body, status,send_date);
		List<Email> email = dao.selectuser(user_id);
		session.setAttribute("send_email", email);
		if(flag== true){
			return "message_inf.jsp";
		}
//エラー処理
		return "login_error.jsp";

	}
}
