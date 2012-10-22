package com.yulinsh.Action.Laox;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.HometownFrom;
import com.yulinsh.actionFrom.LaoxFrom;
import com.yulinsh.service.HometownService;
import com.yulinsh.service.LaoxService;
import com.yulinsh.vo.HometownVO;
import com.yulinsh.vo.LaoxVO;

/**
 * ¿œœÁ¡Ù—‘ÃÌº”
 * @author Administrator
 *
 */
public class LaoxAdd extends Action {
	LaoxService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		LaoxFrom Laoxfrom = (LaoxFrom) form;
//		LaoxVO vo = Laoxfrom.getLaoxVO();
//		try {
//			request.setCharacterEncoding("gb2312");
//		} catch (UnsupportedEncodingException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		String   strnr="";
		try {
			   strnr=new   String(request.getParameter("laoxcontent").trim());//.getBytes("iso-8859-1"),"GB2312");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

//		String strnr=request.getParameter("laoxcontent").trim();
		LaoxVO vo=new LaoxVO();
		vo.setLaoxcontent(strnr);
		service.getInsertLaox(vo);

		return mapping.findForward("add");
	}

	public LaoxService getService() {
		return service;
	}

	public void setService(LaoxService service) {
		this.service = service;
	}
}
