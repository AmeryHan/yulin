package com.yulinsh.Action.Unit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.UnitService;

/**
 * 
 * @author Administrator
 *
 */
public class UnitDel extends Action {

	UnitService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

 
//		PersonalVO vo = userfrom.getPersonalVO();
		String pdid=request.getParameter("id");
		service.getDelUnit(pdid);

		return mapping.findForward("del");
	}

	public UnitService getService() {
		return service;
	}

	public void setService(UnitService service) {
		this.service = service;
	}

 

}
