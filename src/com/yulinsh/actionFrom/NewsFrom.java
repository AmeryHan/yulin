package com.yulinsh.actionFrom;

import org.apache.struts.action.ActionForm;

import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.OfficeVO;

/**
 * 页面数据处理
 * @author Eric
 *	商会动态。
   标题、发布者、发布时间、内容；
 */
public class NewsFrom extends ActionForm {
	String newsId="";
	String newsTitle="";
	String newsAuthor ="";
	String newsTime="";
	String newsContent="";
	private NewsVO vo=null;
	public NewsVO getNewsVO()
	{
		vo = new NewsVO();
		vo.setNewsId(this.newsId);
		vo.setNewsTitle(this.newsTitle);
		vo.setNewsAuthor(this.newsAuthor);
		vo.setNewsTime(this.newsTime);
		vo.setNewsContent(this.newsContent);
 
 
		return vo;
	}
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsAuthor() {
		return newsAuthor;
	}
	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}
	public String getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(String newsTime) {
		this.newsTime = newsTime;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	 
}
