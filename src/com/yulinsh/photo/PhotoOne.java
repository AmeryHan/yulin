package com.yulinsh.photo;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.PhotoService;

/****
 * œ‘ æ“ª’≈Õº∆¨
 * @author Administrator
 *
 */
public class PhotoOne extends Action {
	PhotoService service;

 
	public PhotoService getService() {
		return service;
	}
 
	public void setService(PhotoService service) {
		this.service = service;
	}
 
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

  
		List arr = new ArrayList();
		String phid=request.getParameter("id");
		arr =  service.getSelectPhotoOne(phid);
		request.setAttribute("arr", arr);
		String mbid=request.getParameter("mbid");
		if(mbid.equals("1"))
		{
			return mapping.findForward("select");
		}else
		{
			return mapping.findForward("select2");
		}
		
		
	}

}
