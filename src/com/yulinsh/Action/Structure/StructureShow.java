package com.yulinsh.Action.Structure;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.StructureService;
import com.yulinsh.vo.StructureVO;

/***
 * չʾ
 * @author Administrator
 *
 */
public class StructureShow  extends Action {
	StructureService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		//List arr = new ArrayList();
		String id=request.getParameter("id");
		System.err.println(" select "+id);
		StructureVO arr = service.getListZuZhiOne(id);
		request.setAttribute("map", arr);
		
		if("houtai".equals(request.getParameter("type"))){
			return mapping.findForward("houtai");
		}else if("tupian".equals(request.getParameter("type"))){
			return mapping.findForward("tupian");
		}

		return mapping.findForward("selone");
	}

	public StructureService getService() {
		return service;
	}

	public void setService(StructureService service) {
		this.service = service;
	}

	 
}
