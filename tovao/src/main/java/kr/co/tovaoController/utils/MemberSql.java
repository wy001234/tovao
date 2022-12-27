package kr.co.tovaoController.utils;

public class MemberSql {

	//회원가입
	public static String INSERT_MEMBER = "INSERT INTO `tovao_member` SET "
												+ "`uid`=?, "
												+ "`pass`=SHA2(?,256), "
												+ "`name`=?, "
												+ "`level`=?, "
												+ "`email`=?, "
												+ "`hp`=?, "
												+ "`type`=?, "
												+ "`zip`=?, "
												+ "`addr1`=?, "
												+ "`addr2`=?, "
												+ "`regip`=?, "
												+ "`rdate`=NOW()";
	
	public static String SELECT_USER = "SELECT * FROM `tovao_member` WHERE `uid`=? AND `pass`=SHA2(?,256)";

	//아이디 중복체크
	public static String SELECT_UID = "SELECT COUNT(*) FROM `tovao_member` WHERE `uid`=?";
	
	//자동로그인 체크 (쿠키 저장)
	public static String MAKE_COOKIE = "UPDATE `tovao_member` SET `sessId`=?, `sessLimitDate`=DATE_ADD(NOW(), INTERVAL 3 DAY) WHERE `uid`=?";
	
	//재방문 (쿠키 찾기)
	public static String FIND_COOKIE = "SELECT * FROM `tovao_member` WHERE `sessId`=? AND `sessLimitDate` > NOW()";
	
	//로그아웃 (자동로그인 해제 - 쿠키 덮어쓰기)
	public static String UPDATE_COOKIE = "UPDATE `tovao_member` SET `sessId`=NULL, `sessLimitDate`=NULL WHERE `uid`=?";
}
