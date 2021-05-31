package submenu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.sub")
public class SubController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SubCommand command = null;
		String viewPage = "";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.length()-4);
		
		if(com.equals("/login")) {
			viewPage = "/WEB-INF/member/login.jsp";
		}
		else if(com.equals("/join")) {
			viewPage = "/WEB-INF/member/join.jsp";
		}
		else if(com.equals("/mypage")) {
			viewPage = "/WEB-INF/submenu/mypage.jsp";
		}
//		else if(com.equals("/idCheck")) {
//			command = new IdCheckCommand();
//			command.execute(request, response);
//			viewPage = "/WEB-INF/member/idCheck.jsp";
//		}
//		else if(com.equals("/nickCheck")) {
//			command = new NickCheckCommand();
//			command.execute(request, response);
//			viewPage = "/WEB-INF/member/nickCheck.jsp";
//		}
//		else if(com.equals("/joinOk")) {
//			command = new JoinOkCommand();
//			command.execute(request, response);
//			viewPage = "/WEB-INF/message/message.jsp";
//		}
//		else if(com.equals("/loginOk")) {
//			command = new LoginOkCommand();
//			command.execute(request, response);
//			viewPage = "/WEB-INF/message/message.jsp";
//		}
//		else if(com.equals("/memberMain")) {
//			//command = new MemberMainCommand();
//			//command.execute(request, response);
//			viewPage = "/WEB-INF/member/memberMain.jsp";
//		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
