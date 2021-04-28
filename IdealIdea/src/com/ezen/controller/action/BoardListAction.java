package com.ezen.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardDAO;
import com.ezen.dto.BoardVO;

public class BoardListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		System.out.println("BoardListAction 호출");
		
		String boardname=request.getParameter("boardname");
		System.out.println("BoardListAction boardname: " + boardname);
		
		String path="noticeBoard/boardList.jsp";
		BoardDAO boardDAO=BoardDAO.getInstance();
		List<BoardVO> boardList=boardDAO.selectAllBoard(boardname);
		
		request.setAttribute("boardList", boardList);
		request.setAttribute("boardname", boardname);
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
}
