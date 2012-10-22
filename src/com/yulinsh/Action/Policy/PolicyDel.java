package com.yulinsh.Action.Policy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.PolicyFrom;
import com.yulinsh.service.PolicyService;
import com.yulinsh.vo.PolicyVO;

 

/**
 * 政策动向 删除
 * @author Eric
 *
 */
public class PolicyDel extends Action {
	PolicyService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		PolicyFrom Policyfrom = (PolicyFrom) form;
//		PolicyVO vo = Policyfrom.getPolicyVO();
		String strid=request.getParameter("id").toString();
		service.getDelPolicy(strid);

		return mapping.findForward("del");
	}

	public PolicyService getService() {
		return service;
	}

	public void setService(PolicyService service) {
		this.service = service;
	}

}
