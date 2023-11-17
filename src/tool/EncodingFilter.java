package tool;

import java.io.IOException;

import javax.servlet.Filter;//Filterに関するインポート
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(urlPatterns={"/*"})
//インターフェイス継承
public class EncodingFilter implements Filter {
//フィルタする場合・・・doFilter
	public void doFilter(
		ServletRequest request, ServletResponse response,
		//フィルタ
		FilterChain chain
	) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		//各ファイルの共通の部分↓
		System.out.println("フィルタの前処理");
		chain.doFilter(request, response);
		//各ファイルの共通の部分↓
		System.out.println("フィルタの後処理");
	}
	//インタフェースを継承しているため↓
	//フィルタの開始時に一回だけ呼ばれる
	public void init(FilterConfig filterConfig) {}
	//フィルタの終了時に一回だけ呼び出される
	public void destroy() {}
}
