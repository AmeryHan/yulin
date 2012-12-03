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
import com.yulinsh.service.UserService;

/**
 * ∏ˆ»À…Í«Î≤È—Ø
 * 
 * @author Eric
 * 
 */
public class PersonalSelect extends Action {

	PersonalService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		arr = service.getListPersonal();

		request.setAttribute("arr", arr);
		String plid = request.getParameter("plid").toString().trim();
 
		if ("1".equals(plid)) {
			return mapping.findForward("select2");
		} else {
			return mapping.findForward("select");
		}

		

	}

	public PersonalService getService() {
		return service;
	}

	public void setService(PersonalService service) {
		this.service = service;
	}

}
