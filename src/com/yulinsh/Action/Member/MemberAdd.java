package com.yulinsh.Action.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.MemberFrom;
import com.yulinsh.service.MemberService;
import com.yulinsh.vo.MemberVO;

/**
 * ª·‘±ÀÊ± ÃÌº”
 * @author Administrator
 *
 */
public class MemberAdd extends Action {
	MemberService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		MemberFrom Memberfrom = (MemberFrom) form;
		MemberVO vo = Memberfrom.getMemberVO();
		service.getInsertMember(vo);

		return mapping.findForward("add");
	}

	public MemberService getService() {
		return service;
	}

	public void setService(MemberService service) {
		this.service = service;
	}
}
