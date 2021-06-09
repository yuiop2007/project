package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class JoinOkCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId");
		String mPwd = request.getParameter("mPwd") == null ? "" : request.getParameter("mPwd");
		String mName = request.getParameter("mName") == null ? "" : request.getParameter("mName");
		String mPost = request.getParameter("mPost") == null ? "" : request.getParameter("mPost");

		String add1 = request.getParameter("add1") == null ? "" : request.getParameter("add1");
		String add2 = request.getParameter("add2") == null ? "" : request.getParameter("add2");
		String add3 = request.getParameter("add3") == null ? "" : request.getParameter("add3");
		String mAddress = "";
		
		mAddress = add1 + " " + add2 + " " + add3;

		String tel1 = request.getParameter("tel1") == null ? "" : request.getParameter("tel1");
		String tel2 = request.getParameter("tel2") == null ? "" : request.getParameter("tel2");
		String tel3 = request.getParameter("tel3") == null ? "" : request.getParameter("tel3");
		String mPhone = tel1 + "-" + tel2 + "-" + tel3;

		String mEmail = request.getParameter("mEmail") == null ? "" : request.getParameter("mEmail");
		String mGender = request.getParameter("mGender") == null ? "" : request.getParameter("mGender");

		String year = request.getParameter("birth_year") == null ? "" : request.getParameter("birth_year");
		String month = request.getParameter("birth_month") == null ? "" : request.getParameter("birth_month");
		String day = request.getParameter("birth_day") == null ? "" : request.getParameter("birth_day");
		String mBirth = "";
		
		mBirth = year + month + day;
		
		String mSolar = request.getParameter("is_solar_calendar") == null ? "" : request.getParameter("is_solar_calendar");
		String mCmid = request.getParameter("mCmid") == null ? "" : request.getParameter("mCmid");
		
		MemberDAO dao = new MemberDAO();
		
		//아이디 중복체크
		String tid = dao.idCheck(mId);
		if(!tid.equals("")) {  // 이미 사용중인 아이디가 있다면?
			request.setAttribute("msg", "idCheckNo");
			request.setAttribute("url", request.getContextPath()+"/join.mem");
			return;
		}
		
		//비밀번호 암호와
		SecurityUtil securityUtil = new SecurityUtil();
		mPwd = securityUtil.encryptSHA256(mPwd);
		
		MemberVO vo = new MemberVO();
		
		vo.setmId(mId);
		vo.setmPwd(mPwd);
		vo.setmName(mName);
		vo.setmPost(mPost);
		vo.setmAddress(mAddress);
		vo.setmPhone(mPhone);
		vo.setmEmail(mEmail);
		vo.setmGender(mGender);
		vo.setmBirth(mBirth);
		vo.setmSolar(mSolar);
		vo.setmCmid(mCmid);
		
		int res = dao.joinOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "joinOk");
			request.setAttribute("url", request.getContextPath()+"/login.mem");
		}
		else {
			request.setAttribute("msg", "joinNo");
			request.setAttribute("url", request.getContextPath()+"/join.mem");
		}
	}

}
