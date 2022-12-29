package kr.co.tovaoController.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tovaoController.DAO.BoardDAO;

@WebServlet("/board/delete.do")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String no = req.getParameter("no");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteBoard(no);
		
		resp.sendRedirect("/tovao/board/list.do");
	
	}
}
