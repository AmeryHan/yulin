package com.yulinsh.Action.Office;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.OfficeFrom;
import com.yulinsh.service.OfficeService;
import com.yulinsh.vo.OfficeVO;

/**
 * 办事处修改
 * @author Eric
 *
 */
public class OfficeUpd extends Action {

	OfficeService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		OfficeFrom officefrom = (OfficeFrom) form;
		OfficeVO vo = officefrom.getOfficeVO();
		service.getUpdateOffice(vo);

		return mapping.findForward("");
	}

	public OfficeService getService() {
		return service;
	}

	public void setService(OfficeService service) {
		this.service = service;
	}

}

