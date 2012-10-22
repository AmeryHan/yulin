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
 * …æ≥˝°¢∏ˆ»À…Í«Î
 * @author zhuhuaqiang
 *
 */
public class PersonalDel extends Action {

	PersonalService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		PersonalFrom userfrom = (PersonalFrom) form;
//		PersonalVO vo = userfrom.getPersonalVO();
		String pdid=request.getParameter("id");
		service.getDelPersonal(pdid);

		return mapping.findForward("del");
	}

	public PersonalService getService() {
		return service;
	}

	public void setService(PersonalService service) {
		this.service = service;
	}

}
