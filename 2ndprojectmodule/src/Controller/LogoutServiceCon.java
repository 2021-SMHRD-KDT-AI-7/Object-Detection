package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServiceCon")
public class LogoutServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[LogoutServiceCon]");

		// 로그인 -> session
		// 로그인X -> session X

		HttpSession session = request.getSession();
		session.removeAttribute("info");

		System.out.println("로그아웃 성공");
		response.sendRedirect("./page/login.jsp");
	}

}
