package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

public class MemberLogin implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="member/login.jsp";
		String userid = request.getParameter("userid");
		String pw = request.getParameter("pw");
		
		MemberDAO memberDAO=MemberDAO.getInstance();
		int result=memberDAO.userCheck(userid, pw);
		int grade=memberDAO.getUserGrade(userid);
		System.out.println("MemberLogin 호출 : " +userid);
		System.out.println("MemberLogin 호출 : " +grade);
		request.setAttribute("result", result);
		
		if(result==1) {
			path="index.jsp";
			MemberVO memberVO=memberDAO.getMember(userid);
			request.setAttribute("loginUser", memberVO);
			HttpSession session=request.getSession();
			session.setAttribute("loginUserid", userid);
			session.setAttribute("loginUserGrade", grade);
			
		} else { 
			request.setAttribute("msg", "아이디 또는 암호가 틀립니다."); 
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
