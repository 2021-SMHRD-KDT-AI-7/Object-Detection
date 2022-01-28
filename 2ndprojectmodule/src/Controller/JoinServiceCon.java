package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.userDAO;
import Model.userDTO;

@WebServlet("/JoinServiceCon")
public class JoinServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[JoinServiceCon]");

		// post방식 인코딩
		request.setCharacterEncoding("UTF-8");

		// 2.email, pw, tel, address 값 받아오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_shop = request.getParameter("user_shop");

		System.out.println("user_id : " + user_id);
		System.out.println("user_pw : " + user_pw);
		System.out.println("user_shop : " + user_shop);

		userDTO dto = new userDTO(user_id, user_pw, user_shop);
		userDAO dao = new userDAO();
		int cnt = dao.join(user_id, user_pw, user_shop);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			request.setAttribute("user_id", user_id);
			response.sendRedirect("./page/login.jsp");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("./page/register.jsp");
		}
	}

}
