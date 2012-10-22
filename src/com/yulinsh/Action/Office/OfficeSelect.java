package com.yulinsh.Action.Office;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.OfficeService;

/**
 * 办事处查询
 * @author Eric
 *
 */
public class OfficeSelect  extends Action {

	OfficeService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		System.err.println(" select ");
		List arr = new ArrayList();
		arr = service.getListOffice();
		request.setAttribute("arr", arr);

		return mapping.findForward("list");
	}

	public OfficeService getService() {
		return service;
	}

	public void setService(OfficeService service) {
		this.service = service;
	}
}
