package com.yulinsh.Action.Hometown;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.AnService;
import com.yulinsh.service.HometownService;

/**
 * 家乡信息显示 
 * @author Eric
 *
 */
public class HometownList extends Action {
	HometownService service;

	public HometownService getService() {
	return service;
}

public void setService(HometownService service) {
	this.service = service;
}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		arr = service.getListHometown();
		request.setAttribute("arr", arr);
		String strid=request.getParameter("htid");
		System.err.println(" select "+strid);
		if(strid.equals("1"))
		{
			return mapping.findForward("list2");
		}else 
		{
			return mapping.findForward("list");
		}
	 
		
		 
	}



}
