package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		
		MemberVO memberVO=new MemberVO();
		memberVO.setUserId(request.getParameter("userid"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setPw(request.getParameter("pw"));
		memberVO.setTel(request.getParameter("tel"));
		memberVO.setAddress(request.getParameter("address"));
		memberVO.setGrade(Integer.parseInt(request.getParameter("grade")));
		
		MemberDAO memberDAO=MemberDAO.getInstance();
		memberDAO.updateMember(memberVO);
		
	}

}
