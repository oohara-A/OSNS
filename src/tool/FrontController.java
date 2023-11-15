package tool;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//url指定
@WebServlet(urlPatterns={"*.action"})
public class FrontController extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		PrintWriter out = response.getWriter();
		try{
			//getServletPathフロントコントローラが呼び出されたパスを所得
			String path = request.getServletPath().substring(1);

			//.aのパスをAに置換／を.に置換
			//Acutionの名前であること！！
			String name = path.replace(".a","A").replace("/", ".");

			//どのクラスでもインスタンス化できるようにする
			Action action = (Action)Class.forName(name).
					getDeclaredConstructor().newInstance();
			//Actionの実行
			String url = action.execute(request,response);
			request.getRequestDispatcher(url).forward(request, response);
		}catch (Exception e) {
			e.printStackTrace(out);
		}
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doPost(request,response);
	}

	}
