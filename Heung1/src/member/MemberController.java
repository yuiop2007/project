package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberCommand command = null;
		String viewPage = "";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.length()-4);
		
		if(com.equals("/login")) {
			viewPage = "/WEB-INF/member/login.jsp";
		}
		else if(com.equals("/join")) {
			viewPage = "/WEB-INF/member/join.jsp";
		}
		else if(com.equals("/joinOk")) {
			command = new JoinOkCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/message/message.jsp";
		}
		else if(com.equals("/mypage")) {
			viewPage = "/WEB-INF/member/mypage.jsp";
		}
		else if(com.equals("/notice")) {
			viewPage = "/WEB-INF/board/notice.jsp";
		}
		else if(com.equals("/qna")) {
			viewPage = "/WEB-INF/board/qna.jsp";
		}
		else if(com.equals("/review")) {
			viewPage = "/WEB-INF/board/review.jsp";
		}
		else if(com.equals("/event")) {
			viewPage = "/WEB-INF/board/event.jsp";
		}
//		else if(com.equals("/memberMain")) {
//			//command = new MemberMainCommand();
//			//command.execute(request, response);
//			viewPage = "/WEB-INF/member/memberMain.jsp";
//		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
