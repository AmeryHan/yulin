package com.yulinsh.Action.Hometown;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
import com.yulinsh.service.HometownService;
import com.yulinsh.service.MemberService;

/**
 *家乡查询每一条
 * @author zhuhuaqiang
 *
 */
public class HometownSelectOne extends Action {
	HometownService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		List arr = new ArrayList();
		String id=request.getParameter("id");
		System.err.println(" select "+id);
		arr = service.getListHometownOne(id);
		request.setAttribute("arr", arr);

		return mapping.findForward("list");
	}

	public HometownService getService() {
		return service;
	}

	public void setService(HometownService service) {
		this.service = service;
	}
}
