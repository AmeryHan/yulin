package com.yulinsh.Action.Structure;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.NewsService;
import com.yulinsh.service.StructureService;

/**
 * 组织机构列表
 * @author Administrator
 *
 */
public class StructureList extends Action {
	StructureService service;

	String  str="";//跳转url
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		arr = service.getListZuZhi();
//		String id=request.getParameter("id");
//		arr = service.getListNewsOne(id);
		request.setAttribute("arr1", arr);
	 
        	
        	return mapping.findForward("list");
       
		
	}
	public StructureService getService() {
		return service;
	}
	public void setService(StructureService service) {
		this.service = service;
	}

 

}
