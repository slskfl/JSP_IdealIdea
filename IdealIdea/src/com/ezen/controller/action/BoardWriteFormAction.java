package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

public class BoardWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="noticeBoard/boardWrite.jsp";
		String userid = request.getParameter("userid");
		
		System.out.println("BoardWriteFormAction의" + userid);
		MemberDAO memberDAO=MemberDAO.getInstance();
		MemberVO memberVO=memberDAO.getMember(userid);
		request.setAttribute("memberVO", memberVO);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
