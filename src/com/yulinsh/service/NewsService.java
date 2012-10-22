package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.NewsDAO;
import com.yulinsh.DAO.OfficeDAO;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.OfficeVO;

public class NewsService {
	List arr;
	NewsDAO dao;

	public NewsDAO getDao() {
		return dao;
	}

	public void setDao(NewsDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 新闻动态 
	 * @param vo
	 */
	public void getInsertNews(NewsVO vo)
	{
		dao.InsertNews(vo);
	}
	/**
	 * 新闻动态  信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void getUpdateNews(NewsVO vo)
	{
		dao.UpdateNews(vo);
	}
	/**
	 * 新闻动态 删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void getDelNews(String id)
	{
		dao.DelNews(id);
	}
	/**
	 * 新闻动态  列表
	 * @return
	 */
	public List getListNews()
	{
		arr =new ArrayList();
		arr=dao.ListNews();
		return arr;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-1-2
	 * @return
	 */
	public List getListNewsOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListNewsOne(id);
		return arr;
	}
	
}
