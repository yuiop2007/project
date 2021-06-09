package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sname = (String) session.getAttribute("sname");
		
		session.invalidate();
		
		request.setAttribute("msg", "logoutOk");
		request.setAttribute("url", request.getContextPath()+"/login.mem");
		request.setAttribute("val", sname);
	}

}
