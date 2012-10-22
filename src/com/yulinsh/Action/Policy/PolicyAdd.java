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
 * 政策动向添加
 * @author Eric
 *
 */
public class PolicyAdd extends Action {
	PolicyService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
System.err.println("22222");
		PolicyFrom policyfrom = (PolicyFrom) form;
		PolicyVO vo = policyfrom.getPolicyVO();
		service.getInsertPolicy(vo);

		return mapping.findForward("add");
	}

	public PolicyService getService() {
		return service;
	}

	public void setService(PolicyService service) {
		this.service = service;
	}

 
}
