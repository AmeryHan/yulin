package com.yulinsh.Action.News;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
import com.yulinsh.actionFrom.NewsFrom;
import com.yulinsh.service.NewsService;
import com.yulinsh.service.PersonalService;
import com.yulinsh.vo.NewsVO;

/**
 * 新闻动态 发布
 * @author Eric
 *
 */
public class NewsAdd  extends Action {
	NewsService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		NewsFrom newsfrom = (NewsFrom) form;
		NewsVO vo = newsfrom.getNewsVO();
		service.getInsertNews(vo);

		return mapping.findForward("add");
	}

	public NewsService getService() {
		return service;
	}

	public void setService(NewsService service) {
		this.service = service;
	}

 
}
