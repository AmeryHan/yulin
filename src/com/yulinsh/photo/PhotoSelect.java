package com.yulinsh.photo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.PhotoService;

/***
 * 图片的查询
 * @author Administrator
 *
 */
public class PhotoSelect extends Action {
	PhotoService service;

 
	public PhotoService getService() {
		return service;
	}
 
	public void setService(PhotoService service) {
		this.service = service;
	}
	int sum=0;
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

  
		List arr = new ArrayList();
		String str1=request.getParameter("str1");
		String str2="12";//request.getParameter("str2");
		
		String sy=request.getParameter("sy");
		String xy=request.getParameter("xy");
	
		if(sy!=null)
		{
			if("1".equals(sy))
			{
				//上一页
				 sum-=6;
				if(sum<0)
				{
					str1="0";
				}else {
					
					str1=""+sum;
					
				}
			
			}
		}
		if(xy!=null){
			if("2".equals(xy))
			{
				//下一页
				 sum+=6;
//				if(a>12)
//				{
//					str1="0";
//				}else
				{
					str1=""+sum;
				}
				
			}
		}
	
		
	 
		
		String mbid=request.getParameter("mbid");
		if("1".equals(mbid))
		{
			arr =  service.getSelectPhotoFy(str1,str2);
			request.setAttribute("arr", arr);
			return mapping.findForward("select");
		}else
		{
			arr =  service.getSelectPhoto();
			request.setAttribute("arr", arr);
			return mapping.findForward("select2");
		}
		
		
	}
}
