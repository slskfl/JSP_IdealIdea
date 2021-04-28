package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardDAO;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String boardname=request.getParameter("boardname");
		System.out.println("BoardListAction boardname: " + boardname);
		
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.deleteBoard(num, boardname);
		
		request.setAttribute("boardname", boardname);
		new BoardListAction().execute(request, response);
	}

}
