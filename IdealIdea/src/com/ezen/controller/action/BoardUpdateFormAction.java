package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardDAO;
import com.ezen.dto.BoardVO;

public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String path="noticeBoard/boardUpdate.jsp";
		int num=Integer.parseInt(request.getParameter("num"));
		String boardname=request.getParameter("boardname");
		System.out.println("BoardListAction boardname: " + boardname);
		
		BoardDAO boardDAO=BoardDAO.getInstance();
		BoardVO boardVO=boardDAO.selectOneBoardByNum(num, boardname);
		request.setAttribute("boardVO", boardVO);
		request.setAttribute("boardname", boardname);
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
