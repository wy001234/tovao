package kr.co.tovaoController.contact;

import java.io.IOException;

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

@WebServlet("/board/contact.do")
public class ContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispathcer = req.getRequestDispatcher("/contact.jsp");
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
		String name = mr.getParameter("name");
		String content = mr.getParameter("content");
		String eamil = mr.getParameter("eamil");
		String phone = mr.getParameter("phone");
		String regip = req.getRemoteAddr();
		
		
		BoardVO vo = new BoardVO();
		vo.setCate(cate);
		vo.setName(name);
		vo.setContent(content);
		vo.setEmail(eamil);
		vo.setPhone(phone);
		vo.setRegip(regip);
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.insertBoard(vo);
		
		resp.sendRedirect("/tovao/board/contact.do");
	
	}

}
