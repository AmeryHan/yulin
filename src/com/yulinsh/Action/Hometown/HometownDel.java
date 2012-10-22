package com.yulinsh.Action.Hometown;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.HometownFrom;
import com.yulinsh.actionFrom.NewsFrom;
import com.yulinsh.service.HometownService;
import com.yulinsh.service.NewsService;
import com.yulinsh.vo.HometownVO;
import com.yulinsh.vo.NewsVO;

/***
 * 删除 家乡信息
 * @author Eric
 *
 */
public class HometownDel extends Action {
	HometownService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		HometownFrom Hometownfrom = (HometownFrom) form;
//		HometownVO vo = Hometownfrom.getHometownVO();
		String id=request.getParameter("id");
		service.getDelHometown(id);

		return mapping.findForward("del");
	}

	public HometownService getService() {
		return service;
	}

	public void setService(HometownService service) {
		this.service = service;
	}
}
