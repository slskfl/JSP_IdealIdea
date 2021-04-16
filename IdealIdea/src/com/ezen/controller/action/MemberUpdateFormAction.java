package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardDAO;
import com.ezen.dao.MemberDAO;
import com.ezen.dto.BoardVO;
import com.ezen.dto.MemberVO;

public class MemberUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String path="member/memberUpdate.jsp";
		String userid=request.getParameter("userid");
		
		System.out.println("MemberUpdateFormAction 호출 : " +userid );
		
		MemberDAO memberDAO=MemberDAO.getInstance();
		MemberVO memberVO=memberDAO.getMember(userid);
		System.out.println("id----:"+memberVO.getUserId());
		request.setAttribute("memberVO", memberVO);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
