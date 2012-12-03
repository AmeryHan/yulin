package com.yulinsh.Action.Laox;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.LaoxService;

 
/**
 * ¿œœÁ¡Ù—‘œ‘ æ
 * @author Administrator
 *
 */
public class LaoxList extends Action {
	LaoxService service;

	public LaoxService getService() {
	return service;
}

public void setService(LaoxService service) {
	this.service = service;
}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		List arr = new ArrayList();
		arr = service.getListLaox();
		request.setAttribute("arr", arr);

		String strid=request.getParameter("lxid");
		System.err.println(" select "+strid);
		if("1".equals(strid))
		{
			return mapping.findForward("list2");
		}else 
		{
			return mapping.findForward("list");
		}
	 
		
		 
	}

}
