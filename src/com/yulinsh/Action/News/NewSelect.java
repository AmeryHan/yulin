package com.yulinsh.Action.News;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.NewsService;

/**
 * 新闻动态查询 显示一条
 * @author Eric
 *
 */
public class NewSelect extends Action {
	NewsService service;

	String  str="";//跳转url
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.err.println(" select ");
		List arr = new ArrayList();
		arr = service.getListNews();
//		String id=request.getParameter("id");
//		arr = service.getListNewsOne(id);
		request.setAttribute("arr1", arr);
		String id=request.getParameter("newid");
        if(id.equals("1"))
        {
        	return mapping.findForward("list1");
        }else
        {
        	
        	return mapping.findForward("list");
        }
		
	}

	public NewsService getService() {
		return service;
	}

	public void setService(NewsService service) {
		this.service = service;
	}

 
}