package com.yulinsh.Action.Hometown;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.HometownFrom;
import com.yulinsh.service.HometownService;
import com.yulinsh.vo.HometownVO;

 
/**
 * 家乡信息添加
 * @author Eric
 *
 */
public class HometownAdd extends Action {
	HometownService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		HometownFrom Hometownfrom = (HometownFrom) form;
		HometownVO vo = Hometownfrom.getHometownVO();
		service.getInsertHometown(vo);

		return mapping.findForward("add");
	}

	public HometownService getService() {
		return service;
	}

	public void setService(HometownService service) {
		this.service = service;
	}
}
