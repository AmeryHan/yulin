package com.yulinsh.Action.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.LaoxFrom;
import com.yulinsh.actionFrom.MemberFrom;
import com.yulinsh.service.LaoxService;
import com.yulinsh.service.MemberService;

/**
 *»áÔ±Ëæ±Ê É¾³ý
 * @author Administrator
 *
 */
public class MemberDel extends Action {
	MemberService service;

	public MemberService getService() {
		return service;
	}

	public void setService(MemberService service) {
		this.service = service;
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		MemberFrom Memberfrom = (MemberFrom) form;
//		MemberVO vo = Memberfrom.getMemberVO();
		String id=request.getParameter("id");
		service.getDelMember(id);

		return mapping.findForward("del");
	}
}
