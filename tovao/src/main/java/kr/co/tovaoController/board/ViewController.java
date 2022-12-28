package kr.co.tovaoController.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tovaoController.DAO.BoardDAO;
import kr.co.tovaoController.VO.BoardVO;

@WebServlet("/board/view.do")
public class ViewController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String no = req.getParameter("no");
		String pg = req.getParameter("pg");
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO board = dao.BoardView(no);
		
		req.setAttribute("board", board);
		req.setAttribute("pg", pg);
		
		RequestDispatcher dispathcer = req.getRequestDispatcher("/tovao/view.jsp");
		dispathcer.forward(req, resp);
	}

}
