package user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Favorite;
import bean.Product;
import bean.User;
import dao.UserDAO;
import tool.Action;
//お気に入り追加
public class FavoriteregiAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//sessionの情報を取得
		HttpSession session=request.getSession();
		//追加するを押した商品のid取得
		int product_id=Integer.parseInt(request.getParameter("id"));
		@SuppressWarnings("unchecked")
		List<User> uesr_id = (List<User>) session.getAttribute("user");
//		セッションに追加されている
		@SuppressWarnings("unchecked")
		List<Favorite> favorite=(List<Favorite>)session.getAttribute("favorite");
		int id = 0;
		for(User i : uesr_id){
			id = i.getId();
		}
		UserDAO dao = new UserDAO();
//		お気に入りテーブルに追加する
		boolean flag = dao.favorite_insert(id, product_id);
//	正常終了
	if(flag==true){
		//cartの中身がnullだったらsetAttributeで属性名favoriteを設定する
		if (favorite==null) {
			favorite=new ArrayList<Favorite>();
			session.setAttribute("favorite", favorite);
		}

		//favorite（お気に入りに追加する商品情報）にセッションの情報をセットしていく
		@SuppressWarnings("unchecked")
		List<Product> product=(List<Product>)session.getAttribute("product");
		for (Product p : product) {
			//productのidと同じ場合の処理
			if (p.getId()==product_id) {
				Favorite i=new Favorite();
//				prodct型の変数
				i.setProduct(p);
				i.setId(id);
				i.setProduct_id(product_id);
				favorite.add(i);
			}
		}
//		お気に入りページ表示
		return "user_fav.jsp";
	}
//	エラーアラート表示

//お気に入りページ表示
	return "user_fav.jsp";
	}

}