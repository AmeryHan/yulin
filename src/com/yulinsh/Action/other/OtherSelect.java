package com.yulinsh.Action.other;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
 
import com.yulinsh.actionFrom.AnFrom;
import com.yulinsh.service.OtherService;
import com.yulinsh.vo.AnnouncementVO;
 

/**
 * 公告发布
 * @author Eric
 *
 */
public class OtherSelect extends Action {
	OtherService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		//AnFrom anfrom =  (AnFrom)form;
		AnnouncementVO vo = new AnnouncementVO();
		String username=request.getParameter("username");
		String type=request.getParameter("type");
		String anConent=request.getParameter("content");
		vo.setAnAuthor(username);
		vo.setAnConent(anConent);
		vo.setType(type);
		vo = service.getLatestOne(type);
		request.setAttribute("vo", vo);
		return mapping.findForward(type);
	}

	public OtherService getService() {
		return service;
	}

	public void setService(OtherService service) {
		this.service = service;
	}

 

	 
}
