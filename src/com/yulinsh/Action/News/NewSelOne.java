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
 * 新闻动态 显示一条数据
 * @author Eric
 *
 */
public class NewSelOne extends Action {
	NewsService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		List arr = new ArrayList();
		String id=request.getParameter("newid");
		System.err.println(" select "+id);
		arr = service.getListNewsOne(id);
		request.setAttribute("arr", arr);

		return mapping.findForward("selone");
	}

	public NewsService getService() {
		return service;
	}

	public void setService(NewsService service) {
		this.service = service;
	}

 

}
