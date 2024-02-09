package user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Test_product;
import dao.ProductDAO;
import tool.Action;

public class TestprocAction extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//セッションの情報を取得
				HttpSession session=request.getSession();
				System.out.println("テスト商品アクションです");
				session.removeAttribute("test_product");
				ProductDAO dao = new ProductDAO();
				System.out.println("テスト商品DAOです");
				List<Test_product> product=dao.test_pro_sele();
				System.out.println("テスト商品DAO２です");
				//セッションにlist属性で登録
				session.setAttribute("test_product", product);

//				商品リストに遷移
				return "test_pro_list.jsp";
	}

}
