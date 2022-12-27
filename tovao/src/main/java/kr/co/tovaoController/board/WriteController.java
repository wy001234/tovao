package kr.co.tovaoController.board;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.tovaoController.DAO.BoardDAO;
import kr.co.tovaoController.VO.BoardVO;

@WebServlet("/board/write.do")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispathcer = req.getRequestDispatcher("/write.jsp");
		dispathcer.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// multipart 전송 데이터 수신
		ServletContext ctx = req.getServletContext();
		String path = ctx.getRealPath("/file/");
		int maxSize = 1024 * 1024 * 10; // 최대 파일 업로드 허용량 10MB
		MultipartRequest mr = new MultipartRequest(req, path, maxSize, "UTF-8", new DefaultFileRenamePolicy());

		// 데이터 수신
		String cate = mr.getParameter("cate");
		String title = mr.getParameter("title");
		String content = mr.getParameter("content");
		String thumb = mr.getParameter("thumb");
		String fname = mr.getFilesystemName("fname");
		String regip = req.getRemoteAddr();
		
		String randName = getRandomString(thumb);	
		String name = renameImage(path, thumb, randName);


		// VO 데이터 생성
		BoardVO vo = new BoardVO();
		vo.setCate(cate);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setThumb(name);
		vo.setRegip(regip);
		
		//파일첨부 데이터 수신
		vo.setFname(fname);

		// 데이터베이스 퍼리
		logger.debug(vo.getContent());
		BoardDAO dao = BoardDAO.getInstance();
		dao.insertBoard(vo);
		
		
		
		// 리다이렉트
		resp.sendRedirect("/tovao/board/list.do");
		
	}

	public String getRandomString(String fname) {
		UUID randName = UUID.randomUUID();
		return randName.toString();
	}
	
	public String renameImage(String path, String oriName, String randName) {
		int idx = oriName.lastIndexOf(".");
		String ext = oriName.substring(idx);
		
		String newName = randName+ext; 
		
		File oriFile = new File(path+"/"+oriName);
		File newFile = new File(path+"/"+newName);
		
		oriFile.renameTo(newFile);
		
		return newName;
	}

}
