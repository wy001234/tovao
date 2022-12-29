package kr.co.tovaoController.utils;

public class Sql {

	public static final String INSERT_BOARD = "insert into `tovao_board` set "
										+ "`cate`=?, "
										+ "`title`=?, "
										+ "`content`=?, "
										+ "`thumb`=?, "
										+ "`regip`=?, "
										+ "`rdate`= NOW(), "
										+ "`name`=?, "
										+ "`email`=?, "
										+ "`phone`=?";
	
	//파일 넣기
	public static final String INSERT_FILE = "insert into `tovao_board_file` set "
										+ "`no`=?,"
										+ "`newName`=?,"
										+ "`oriName`=?,"
										+ "`rdate`= NOW()";

	public static final String COUNT_LIST_BOARD = "SELECT COUNT(*) FROM `tovao_board` WHERE `cate` = '소식'";
	public static final String COUNT_LIST_GALLERY = "SELECT COUNT(*) FROM `tovao_board` WHERE `cate` = '카드뉴스'";
	public static final String COUNT_LIST_CONTACT = "SELECT COUNT(*) FROM `tovao_board` WHERE `cate` = '문의하기'";
	
	public static final String SELECT_BOARD = "select * from `tovao_board` WHERE `no`=?";

	//게시물보기
	
	//게시글삭제
	public static final String DELETE_BOARD = "DELETE FROM `tovao_board` WHERE `no`=?";
}
