package tool;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//抽象クラス
@MultipartConfig
public abstract class Action {
	public abstract String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception;
}
