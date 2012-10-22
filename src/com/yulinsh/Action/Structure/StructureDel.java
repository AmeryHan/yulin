package com.yulinsh.Action.Structure;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.StructureService;

/***
 * É¾³ý
 * @author Administrator
 *
 */
public class StructureDel extends Action {
	StructureService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	 
//		NewsVO vo = newsfrom.getNewsVO();
		String id=request.getParameter("id");
		service.getDelZuZhi(id);

		return mapping.findForward("del");
	}

	public StructureService getService() {
		return service;
	}

	public void setService(StructureService service) {
		this.service = service;
	}

 

 
}
