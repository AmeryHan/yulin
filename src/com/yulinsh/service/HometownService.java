package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.HometownDAO;
import com.yulinsh.DAO.NewsDAO;
import com.yulinsh.vo.HometownVO;
import com.yulinsh.vo.NewsVO;

/**
 * 
 * @author Administrator
 *
 */
public class HometownService {
	List arr;
	HometownDAO dao;

	public HometownDAO getDao() {
		return dao;
	}

	public void setDao(HometownDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 家乡
	 * @param vo
	 */
	public void getInsertHometown(HometownVO vo)
	{
		dao.InsertHometown(vo);
	}
	/**
	 * 家乡 信息修改
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void getUpdateHometown(HometownVO vo)
	{
		dao.UpdateHometown(vo);
	}
	/**
	 * 家乡删除
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param ID
	 */
	public void getDelHometown(String id)
	{
		dao.DelHometown(id);
	}
	/**
	 * 家乡 列表
	 * @return
	 */
	public List getListHometown()
	{
		arr =new ArrayList();
		arr=dao.ListHometown();
		return arr;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-2-12
	 * @return
	 */
	public List getListHometownOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListHometownOne(id);
		return arr;
	}
	
}
