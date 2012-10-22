package com.yulinsh.photo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.PersonalFrom;
import com.yulinsh.service.PersonalService;
import com.yulinsh.service.PhotoService;

/***
 * Í¼Æ¬É¾³ý
 * @author Administrator
 *
 */
public class PhotoDel  extends Action {

	PhotoService service;

	 
	public PhotoService getService() {
		return service;
	}
 
	public void setService(PhotoService service) {
		this.service = service;
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		PersonalFrom userfrom = (PersonalFrom) form;
//		PersonalVO vo = userfrom.getPersonalVO();
		String pdid=request.getParameter("id");
		service.getDelPhoto(pdid);
        return mapping.findForward("del2");
	 
		
	}

 
}


 
