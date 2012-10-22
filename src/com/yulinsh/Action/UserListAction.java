package com.yulinsh.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.DAO.UserDAO;
import com.yulinsh.service.UserService;
import com.yulinsh.vo.UserVo;

public class UserListAction extends Action {

	UserService userserviver;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
System.err.println(" select ");
		   List  arr= new ArrayList();
		  //UserDAO  dao  = new UserDAO();
		 // arr=dao.getUserSel();
		   UserVo vo = new UserVo();
		   arr=userserviver.getSelect(vo);
		  request.setAttribute("arr", arr);
		
		return mapping.findForward("list");
	
	}

	public UserService getUserserviver() {
		return userserviver;
	}

	public void setUserserviver(UserService userserviver) {
		this.userserviver = userserviver;
	}
	
}
