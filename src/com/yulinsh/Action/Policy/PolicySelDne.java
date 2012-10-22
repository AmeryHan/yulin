package com.yulinsh.Action.Policy;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.NewsService;
import com.yulinsh.service.PolicyService;

/**
 * 政策动向信息 显示一条
 * @author Eric
 *
 */
public class PolicySelDne extends Action {
	PolicyService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		String id=request.getParameter("id");
		arr = service.getListPolicyOne(id);
		request.setAttribute("arr1", arr);

		return mapping.findForward("list");
	}

	public PolicyService getService() {
		return service;
	}

	public void setService(PolicyService service) {
		this.service = service;
	}
}
