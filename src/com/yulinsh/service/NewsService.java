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
	 * ���Ŷ�̬ 
	 * @param vo
	 */
	public void getInsertNews(NewsVO vo)
	{
		dao.InsertNews(vo);
	}
	/**
	 * ���Ŷ�̬  ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdateNews(NewsVO vo)
	{
		dao.UpdateNews(vo);
	}
	/**
	 * ���Ŷ�̬ ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelNews(String id)
	{
		dao.DelNews(id);
	}
	/**
	 * ���Ŷ�̬  �б�
	 * @return
	 */
	public List getListNews()
	{
		arr =new ArrayList();
		arr=dao.ListNews();
		return arr;
	}
	/**
	 * ��ʾһ������
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @return
	 */
	public List getListNewsOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListNewsOne(id);
		return arr;
	}
	
}
