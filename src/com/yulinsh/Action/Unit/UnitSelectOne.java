package com.yulinsh.Action.Unit;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.UnitService;

/***
 * 单个单位会员显示
 * @author Administrator
 *
 */
public class UnitSelectOne extends Action {

	 UnitService service;


	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
//        UnitVO vo = new  UnitVO();
		String strid=request.getParameter("id");
		arr = service.getListUnitOne(strid);
		request.setAttribute("arr", arr);
		String id=request.getParameter("utid");
       if("1".equals(id))
       {
       	return mapping.findForward("listone2");
       }else
       {
       	
       	return mapping.findForward("listone");
       }
	 

	}


	public UnitService getService() {
		return service;
	}


	public void setService(UnitService service) {
		this.service = service;
	}


}
