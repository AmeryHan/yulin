package com.yulinsh.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.OtherService;
import com.yulinsh.vo.AnnouncementVO;

public class DisplayAction extends Action {

	private OtherService service;
	public OtherService getService() {
		return service;
	}
	public void setService(OtherService service) {
		this.service = service;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String type = request.getParameter("type");
		AnnouncementVO vo = service.getLatestOne(type);
		request.setAttribute("vo", vo);
		return mapping.findForward("success");
	}
}
