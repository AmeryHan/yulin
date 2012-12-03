package com.yulinsh.Action.Unit;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
 
import com.yulinsh.service.PersonalService;
import com.yulinsh.service.UnitService;
import com.yulinsh.vo.UnitVO;

/**
 * 单位数据显示
 * @author Eric
 *
 */
public class UnitSelect extends Action {

	 UnitService service;


	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
//         UnitVO vo = new  UnitVO();
		arr = service.getListUnit();
		request.setAttribute("arr", arr);
		String id=request.getParameter("utid");
        if("1".equals(id))
        {
        	return mapping.findForward("list2");
        }else
        {
        	
        	return mapping.findForward("list");
        }
	 

	}


	public UnitService getService() {
		return service;
	}


	public void setService(UnitService service) {
		this.service = service;
	}
 

 
}