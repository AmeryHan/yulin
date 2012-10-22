package com.yulinsh.Action.An;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.AnService;

/**
 * 公告列表
 * @author Eric
 *
 */
public class AnSelect2  extends Action {
 
	AnService service;

		public AnService getService() {
		return service;
	}

	public void setService(AnService service) {
		this.service = service;
	}

		public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) {
			System.err.println(" select ");
			List arr = new ArrayList();
			arr = service.getListAn2();
			request.setAttribute("arr", arr);

			String str=request.getParameter("anid");
			if(str.equals("1"))
			{
				return mapping.findForward("list");
			}else
			{
				return mapping.findForward("list2");
			}
 
			
			
		
		}

 
}
