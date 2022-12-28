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
		
		String cate = req.getParameter("cate");
		String name = req.getParameter("name");
		String content = req.getParameter("content");
		String eamil = req.getParameter("eamil");
		String phone = req.getParameter("phone");
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
