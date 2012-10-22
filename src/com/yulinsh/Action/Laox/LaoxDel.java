package com.yulinsh.Action.Laox;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.LaoxFrom;
import com.yulinsh.service.LaoxService;

 
 /***
  * ¿œœÁ¡Ù—‘…æ≥˝
  * @author Administrator
  *
  */

public class LaoxDel extends Action {
	LaoxService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		LaoxFrom Laoxfrom = (LaoxFrom) form;
//		LaoxVO vo = Laoxfrom.getLaoxVO();
		String id=request.getParameter("id");
		service.getDelLaox(id);

		return mapping.findForward("del");
	}

	public LaoxService getService() {
		return service;
	}

	public void setService(LaoxService service) {
		this.service = service;
	}
}
