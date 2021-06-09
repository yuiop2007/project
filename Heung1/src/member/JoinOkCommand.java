package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinOkCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mPwd = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mName = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mPost = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		
		String add1 = request.getParameter("mId") == null ? "" : request.getParameter("mId");
		String add2 = request.getParameter("mId") == null ? "" : request.getParameter("mId");
		String mAddress = add1 + add2;
		
		String tel1 = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String tel2 = request.getParameter("mId") == null ? "" : request.getParameter("mId");
		String tel3 = request.getParameter("mId") == null ? "" : request.getParameter("mId");
		String mPhone = tel1+tel2+tel3;
		
		String mEmail = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mGender = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mRadte = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mBirth = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mLevel = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
		String mId = request.getParameter("mId") == null ? "" : request.getParameter("mId"); 
	}

}
