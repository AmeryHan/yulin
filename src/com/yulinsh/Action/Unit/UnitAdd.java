package com.yulinsh.Action.Unit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
import com.yulinsh.actionFrom.UnitFrom;
import com.yulinsh.service.PersonalService;
import com.yulinsh.service.UnitService;
import com.yulinsh.vo.UnitVO;

/**
 * 单位申请信息添加
 * @author Eric
 *
 */
public class UnitAdd extends Action {

	 UnitService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		 UnitFrom  unitfrom = (UnitFrom) form;
		 UnitVO vo = unitfrom.getUnitVO();
		 service.getInsertUnit(vo);

		return mapping.findForward("add");
	}

	public UnitService getService() {
		return service;
	}

	public void setService(UnitService service) {
		this.service = service;
	}

 
}
