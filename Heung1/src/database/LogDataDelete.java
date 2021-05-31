package database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogDataDelete")
public class LogDataDelete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String mid = request.getParameter("mid");
		
		HttpSession session = request.getSession();
		
		String csmid = (String) session.getAttribute("smid");
		if(csmid == null) {
			out.println("<script>");
			out.println("alert('로그인후 사용하세요.');");
			out.println("location.href='"+request.getContextPath()+"/main/main.jsp?submenu=login';");
			out.println("</script>");
		}
		
		session.invalidate();
		
		LoginDAO dao = new LoginDAO();
		
		dao.logDataDelete(mid);
		
		
		out.println("<script>");
		out.println("alert('"+mid+"님 탈퇴 되셨습니다.');");
		out.println("location.href='"+request.getContextPath()+"/main/main.jsp';");
		out.println("</script>");
	}
}
