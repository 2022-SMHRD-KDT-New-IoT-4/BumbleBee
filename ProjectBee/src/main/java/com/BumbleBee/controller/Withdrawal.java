package com.BumbleBee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BumbleBee.model.TbMemberDAO;
import com.BumbleBee.model.TbMemberDTO;

public class Withdrawal implements Command {
	private static final long serialVersionUID = 1L;

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		TbMemberDTO user = (TbMemberDTO)session.getAttribute("");	
		String id = user.getId();
		TbMemberDTO dto = new TbMemberDTO(); // 수정할 데이터 넣기
		dto.setId(id);
		// 4. dao
		TbMemberDAO dao = new TbMemberDAO();
		int row = dao.withdrawal(dto);
		if(row > 0) {
			// 회원탈퇴 성공
		}
		else {
			// 회원탈퇴 실패
		}
		return null;
	}

}