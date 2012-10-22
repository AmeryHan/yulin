package com.yulinsh.Action.Personal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.PersonalFrom;
import com.yulinsh.service.PersonalService;
import com.yulinsh.vo.PersonalVO;

 
/**
 * 个人信息申请修改
 * @author Eric 创建时间：2011-12-5
 *
 */
public class PersonalUpd extends Action {
	PersonalService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		PersonalFrom userfrom = (PersonalFrom) form;
//		PersonalVO vo = userfrom.getPersonalVO();
		String id=request.getParameter("id");
		service.getUpdatePersonal(id);

		return mapping.findForward("upd");
	}

	public PersonalService getService() {
		return service;
	}

	public void setService(PersonalService service) {
		this.service = service;
	}
}
