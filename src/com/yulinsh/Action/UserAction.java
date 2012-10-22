package com.yulinsh.Action;

 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.UserActionFrom;
import com.yulinsh.service.UserService;
import com.yulinsh.vo.UserVo;

public class UserAction extends Action {

	UserService service;
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		     UserActionFrom userfrom =(UserActionFrom) form; 
		     UserVo vo =userfrom.getUserVo();
		     service.getInset(vo);
		     
		   return mapping.findForward("login");
		}

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
}
