package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.GetConn;

public class MemberDAO {
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	MemberVO vo = null;
	
	//아이디 중복체크
	public String idCheck(String mId) {
		String tid = "";
		try {
			sql = "select * from member where mId = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs = pstmt.executeQuery();
			if(rs.next()) tid = rs.getString("mId");
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return tid;
	}

	// 회원 가입 처리
	public int joinOk(MemberVO vo) {
		int res = 0;
		try {
			sql = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, default, ?, ?, default, default, default, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getmId());
			pstmt.setString(2, vo.getmPwd());
			pstmt.setString(3, vo.getmName());
			pstmt.setString(4, vo.getmPost());
			pstmt.setString(5, vo.getmAddress());
			pstmt.setString(6, vo.getmPhone());
			pstmt.setString(7, vo.getmEmail());
			pstmt.setString(8, vo.getmGender());
			pstmt.setString(9, vo.getmBirth());
			pstmt.setString(10, vo.getmSolar());
			pstmt.setString(11, vo.getmCmid());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}

	// 아이디 검색하여 정보 가져오기
	public MemberVO loginOk(String mId) {
		try {
			sql = "select * from member where mId = ? and mDrop = 'NO'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new MemberVO();
				vo.setmId(mId);
				vo.setmPwd(rs.getString("mPwd"));
				vo.setmName(rs.getString("mName"));
				vo.setmLevel(rs.getInt("mLevel"));
			}
			else {
				vo = null;
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}
	
}
