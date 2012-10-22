package com.yulinsh.Action.News;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.NewsFrom;
import com.yulinsh.service.NewsService;
import com.yulinsh.vo.NewsVO;
 

/**
 * 新闻动态删除
 * 创建人：Eric 创建时间：2011-12-5
 */
public class NewDel extends Action {
	NewsService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		NewsFrom newsfrom = (NewsFrom) form;
//		NewsVO vo = newsfrom.getNewsVO();
		String id=request.getParameter("id");
		service.getDelNews(id);

		return mapping.findForward("del");
	}

	public NewsService getService() {
		return service;
	}

	public void setService(NewsService service) {
		this.service = service;
	}

 
}