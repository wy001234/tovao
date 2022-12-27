package kr.co.tovaoController.DAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.tovaoController.VO.MemberVO;
import kr.co.tovaoController.utils.DBCP;
import kr.co.tovaoController.utils.MemberSql;

public class MemberDAO extends DBCP {

	Logger logger = LoggerFactory.getLogger(this.getClass());

	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private MemberDAO() {}
	
	
	//로그인 체크
		public MemberVO selectMemeber(String uid, String pass) {
			MemberVO vo = new MemberVO();
			try {
				logger.info("로그인 체크");
				conn = getConnection();
				psmt = conn.prepareStatement(MemberSql.SELECT_USER);
				psmt.setString(1, uid);
				psmt.setString(2, pass);
				rs = psmt.executeQuery();
				if(rs.next()) {
					vo.setUid(rs.getString(1));
					vo.setPass(rs.getString(2));
					vo.setName(rs.getString(3));
					vo.setLevel(rs.getString(4));
					vo.setRegip(rs.getString(5));
					vo.setRdate(rs.getString(6));
					vo.setSessId(rs.getString(7));
					vo.setSessId(rs.getString(8));
				}
				close();
			}catch(Exception e) {
				logger.error(e.getMessage());
			}
			return vo;
		}
		
		//자동로그인
		public void makeCookie(String uid, String sessId) {
			try {
				logger.info("쿠키 저장~");
				conn = getConnection();
				psmt = conn.prepareStatement(MemberSql.MAKE_COOKIE);
				psmt.setString(1, sessId);
				psmt.setString(2, uid);
				psmt.executeUpdate();
				close();
			}catch(Exception e) {
				logger.error(e.getMessage());
			}
		}
	
	
}
