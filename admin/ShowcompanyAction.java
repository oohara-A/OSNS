package admin;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowcompanyAction {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
		// 企業名
		String company_name=request.getParameter("company_name");
		// 表示数
		int display_count=repuest.getParameter("display_count");
		//DB接続処理
		CompanyDAO dao=new CompanyDAO();
		//サーチ実行処理
		Compay company=dao.search(company_name);

		ResultSet rs=st.executeQuery();

		int count = 0;

		while(rs.next()){
			//企業名
			out.println(rs.getString("company_name"));
			//メールアドレス
			out.println(rs.getString("email"));
			//登録日時
			out.println(rs.getString(""));
			out.println("<br>");
			if(count==display_count){
				break;
			}
		}
	}
}
