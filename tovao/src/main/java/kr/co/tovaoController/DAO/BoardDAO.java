package kr.co.tovaoController.DAO;

import kr.co.tovaoController.VO.BoardVO;
import kr.co.tovaoController.utils.DBCP;
import kr.co.tovaoController.utils.Sql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BoardDAO extends DBCP {

	Logger logger = LoggerFactory.getLogger(this.getClass());

	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private BoardDAO() {}
	
	
	//게시글 넣기
	public void insertBoard(BoardVO vo) {
		try{
			logger.info("게시글 등록");
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.INSERT_BOARD);
			psmt.setString(1, vo.getCate());
			psmt.setString(2, vo.getTitle());
			psmt.setString(3, vo.getContent());
			psmt.setString(4, vo.getThumb());
			psmt.setString(5, vo.getRegip());			
			psmt.executeUpdate();
			close();
			
		}catch(Exception e){
			logger.error(e.getMessage());
		}
	}
	
	
	//파일 넣기
	
	public void insertFile(String prodNo, String newName, String fname) {
		try{
			logger.info("파일넣기 start...");
			Connection conn = getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_FILE);
			psmt.setString(1, prodNo);
			psmt.setString(2, newName);
			psmt.setString(3, fname);
			
			psmt.executeUpdate();
			psmt.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	
	//게시글 리스트	
	public List<BoardVO> selectBoard(int start) {
		List<BoardVO> board = new ArrayList<>();
		try{			
			conn = getConnection();
			psmt = conn.prepareStatement("SELECT * FROM `tovao_board` WHERE `cate` = '소식' ORDER BY `no` DESC LIMIT ?,10");
			psmt.setInt(1, start);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getString(1));
				vo.setCate(rs.getString(2));
				vo.setTitle(rs.getString(4));
				vo.setHit(rs.getString(6));
				vo.setContent(rs.getString(7));
				vo.setRdate(rs.getString(10));
				board.add(vo);
			}
			close();
		}catch(Exception e){
			logger.error(e.getMessage());
		}
		logger.debug("데이터 입력" + board.size());
		return board;
	}
	
	//게시글 갤러리 리스트
	public List<BoardVO> selectGallery(int start) {
		List<BoardVO> board = new ArrayList<>();
		try{			
			conn = getConnection();
			psmt = conn.prepareStatement("SELECT * FROM `tovao_board` WHERE `cate` = '카드뉴스' ORDER BY `no` DESC LIMIT ?,10");
			psmt.setInt(1, start);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getString(1));
				vo.setCate(rs.getString(2));
				vo.setTitle(rs.getString(4));
				vo.setHit(rs.getString(6));
				vo.setContent(rs.getString(7));
				vo.setRdate(rs.getString(10));
				board.add(vo);
			}
			close();
		}catch(Exception e){
			logger.error(e.getMessage());
		}
		logger.debug("데이터 입력" + board.size());
		return board;
	}
	
	//리스트 페이징 all
	public int selectCountTotal() {
		int result = 0;
		try {
			logger.info("페이징 처리");
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.COUNT_LIST_BOARD);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("데이터 입력" + result);
		return result;
	}
	
	//리스트 페이징 갤러리
	public int selectCountGallery() {
		int result = 0;
		try {
			logger.info("페이징 처리");
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.COUNT_LIST_GALLERY);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("데이터 입력" + result);
		return result;
	}
	
	//게시글 보기
	public BoardVO BoardView(String no) {
		BoardVO vo = null;
		try{			
			logger.info("공지사항 보기");
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_BOARD);
			psmt.setString(1, no);
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new BoardVO();
				vo.setNo(rs.getString(1));
				vo.setCate(rs.getString(2));
				vo.setTitle(rs.getString(4));
				vo.setContent(rs.getString(7));
			}
			close();
		}catch(Exception e){
			logger.error(e.getMessage());
		}
		return vo;
	}

	
	
	//게시글 수정
	
	//게시글 삭제
	
	
	
	
	
}
