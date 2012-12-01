package com.yulinsh.Action.An;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.AnService;
import com.yulinsh.vo.AnnouncementVO;

/**
 * 显示一条数据
 * @author Eric
 *
 */
public class AnSelOne extends Action {

	AnService service;

		public AnService getService() {
		return service;
	}

	public void setService(AnService service) {
		this.service = service;
	}

		public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) {
			System.err.println("显示一条数据");
			//List arr = new ArrayList();
			String id=request.getParameter("id");
			AnnouncementVO arr = service.getListAnOne(id);
			request.setAttribute("map", arr);
			
			if("houtai".equals(request.getParameter("type"))){
				return mapping.findForward("houtai");
			}

			return mapping.findForward("selone");
		}

}
