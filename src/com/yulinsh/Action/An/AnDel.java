package com.yulinsh.Action.An;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.AnFrom;
import com.yulinsh.actionFrom.NewsFrom;
import com.yulinsh.service.AnService;
import com.yulinsh.service.NewsService;
import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.NewsVO;

/**
 * ¹«¸æÉ¾³ý
 * @author Eric
 *
 */
public class AnDel extends Action {
	AnService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		AnFrom anfrom = (AnFrom) form;
		AnnouncementVO vo = anfrom.getAnnouncementVO();
		String id=request.getParameter("id");
		
		service.getDelAn(id);

		return mapping.findForward("del");
	}

	public AnService getService() {
		return service;
	}

	public void setService(AnService service) {
		this.service = service;
	}

 
}
