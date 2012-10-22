package com.yulinsh.Action.Personal;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.PersonalService;

/****
 * 单个会员信息 
 * @author Administrator
 *
 */
public class PersonalOne extends Action {

	PersonalService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		String strid=request.getParameter("id");
		arr = service.getListPersonalOne(strid);

		request.setAttribute("arr", arr);
	 
	    return mapping.findForward("selectone");
	 

		

	}

	public PersonalService getService() {
		return service;
	}

	public void setService(PersonalService service) {
		this.service = service;
	}
}