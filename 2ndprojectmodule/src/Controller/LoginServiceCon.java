package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.userDAO;
import Model.userDTO;

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[LoginServiceCon]");

		// 1. 값 받아오기(user_id , user_pw)
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		System.out.println("user_id : " + user_id);
		System.out.println("user_pw : " + user_pw);

		userDAO dao = new userDAO();
		userDTO info = dao.login(user_id, user_pw);

		if (info != null) {
			System.out.println("로그인 성공");
			// session으로 로그인 정보
			HttpSession session = request.getSession();	// 세션선언
			session.setAttribute("info", info);			// 세션안에 info(아이디 비밀번호)데이터 추가
			session.setAttribute("user_id", user_id);	// 세션에 아이디 값 따로 추가
			response.sendRedirect("./page/Main.jsp");
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("./page/login.jsp");
			
		}
	}

}
