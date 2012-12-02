package com.yulinsh.Action.An;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
 
import com.yulinsh.actionFrom.AnFrom;
import com.yulinsh.service.AnService;
import com.yulinsh.vo.AnnouncementVO;
 

/**
 * 公告发布
 * @author Eric
 *
 */
public class AnAdd extends Action {
	AnService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		AnFrom anfrom =  (AnFrom)form;
		AnnouncementVO vo = new AnnouncementVO();
		String anTitle=request.getParameter("anTitle");
		 vo.setAnTitle(anTitle);
		String anAuthor=request.getParameter("anAuthor");
		vo.setAnAuthor(anAuthor);
		String anConent=request.getParameter("anConent");
		vo.setAnConent(anConent);
		
		String strid=request.getParameter("zuzhiid");
		if(null == strid || "".equals(strid)){
			service.getInsertAn(vo);
		}else{
			service.updateAn(vo, strid);
		}

		return mapping.findForward("add");
	}

	public AnService getService() {
		return service;
	}

	public void setService(AnService service) {
		this.service = service;
	}

 public static  void main(String[] args) {
	 int i=0;
	 for(int j=0;j<12;j++) {
		 i++;
		 if(i%3!=0) {
			 System.out.print("------"+i+"\t");
		 } else {
			 System.out.println("i:"+i+"\t");
		 }
	 }
 }

	 
}
 