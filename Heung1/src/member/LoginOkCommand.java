package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.SecurityUtil;

public class LoginOkCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mId = request.getParameter("mId")==null ? "" : request.getParameter("mId");
		String mPwd = request.getParameter("mPwd")==null ? "" : request.getParameter("mPwd");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.loginOk(mId);
		HttpSession session = request.getSession();
		
		if(vo != null) {  // 아이디 검색 성공
			// 입력한 비밀번호 인코딩처리
			
			SecurityUtil securityUtil = new SecurityUtil();
			mPwd = securityUtil.encryptSHA256(mPwd);
			
			// 입력된 인코딩 비밀번호와 DB에 미리 인코딩되어 저장어 있는 비밀번호를 비교처리
			if(mPwd.equals(vo.getmPwd())) {  // 비밀번호 인증 OK - 회원 인증처리 성공...
				session.setAttribute("smid", mId);
				session.setAttribute("sname", vo.getmName());
				session.setAttribute("slevel", vo.getmLevel());
				
				request.setAttribute("msg", "loginOk");
				request.setAttribute("url", request.getContextPath()+"/main.jsp");
				request.setAttribute("val", vo.getmName());
			}
			else {  // 회원 인증처리 실패....
				request.setAttribute("msg", "loginPwdNo");
				request.setAttribute("url", request.getContextPath()+"/login.mem");
			}
		}
		else {
			request.setAttribute("msg", "loginIdNo");
			request.setAttribute("url", request.getContextPath()+"/login.mem");
		}
	}

}