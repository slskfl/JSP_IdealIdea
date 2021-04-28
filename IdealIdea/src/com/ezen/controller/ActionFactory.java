package com.ezen.controller;

import com.ezen.controller.action.Action;
import com.ezen.controller.action.BoardDeleteAction;
import com.ezen.controller.action.BoardListAction;
import com.ezen.controller.action.BoardReadAction;
import com.ezen.controller.action.BoardUpdateAction;
import com.ezen.controller.action.BoardUpdateFormAction;
import com.ezen.controller.action.BoardWriteAction;
import com.ezen.controller.action.BoardWriteFormAction;
import com.ezen.controller.action.MainAction;
import com.ezen.controller.action.MemberIdCheck;
import com.ezen.controller.action.MemberJoinAction;
import com.ezen.controller.action.MemberJoinFormAction;
import com.ezen.controller.action.MemberLogin;
import com.ezen.controller.action.MemberLoginFormAction;
import com.ezen.controller.action.MemberLogoutAction;
import com.ezen.controller.action.MemberUpdateAction;
import com.ezen.controller.action.MemberUpdateFormAction;

public class ActionFactory {
	private ActionFactory(){
		
	}
	
	private static ActionFactory instance=new ActionFactory();

	public static ActionFactory getInstance() { 
		return instance; 
	}
	
	public Action getAction(String command) { 
		Action action = null;  
		
		if(command.equals("main")) {
			action = new MainAction();
		}
		if(command.equals("board_list")) { //글 목록 가져오기
			action = new BoardListAction();
		}else if(command.equals("board_write_form")) { //게시글 작성
			action = new BoardWriteFormAction();
		}else if(command.equals("board_write")) {
			action=new BoardWriteAction();
		}else if(command.equals("board_read")) {
			action=new BoardReadAction();
		}else if(command.equals("board_update_form")) {
			action=new BoardUpdateFormAction();
		}else if(command.equals("board_update")) {
			action=new BoardUpdateAction();
		}else if(command.equals("board_delete")) {
			action=new BoardDeleteAction();
		}else if(command.equals("member_login_form")) {
			action=new MemberLoginFormAction(); 
		}else if(command.equals("member_login")) {
			action=new MemberLogin(); 
		}else if(command.equals("memder_join_form")) {
			action=new MemberJoinFormAction();
		}else if(command.equals("member_join")) {
			action=new MemberJoinAction();
		}else if(command.equals("member_idCheck")) {
			action=new MemberIdCheck();
		}else if(command.equals("member_logout")) {
			action=new MemberLogoutAction();
		}else if(command.equals("member_update_form")) {
			action=new MemberUpdateFormAction();
		}else if(command.equals("member_update")) {
			action=new MemberUpdateAction();
		}
		return action; 
	}
}
