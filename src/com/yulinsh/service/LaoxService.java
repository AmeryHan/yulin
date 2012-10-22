package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.HometownDAO;
import com.yulinsh.DAO.LaoxDAO;
import com.yulinsh.vo.HometownVO;
import com.yulinsh.vo.LaoxVO;

/**
 * 
 * @author Administrator
 *
 */
public class LaoxService {
	List arr;
	LaoxDAO dao;

	public LaoxDAO getDao() {
		return dao;
	}

	public void setDao(LaoxDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 老乡留言
	 * @param vo
	 */
	public void getInsertLaox(LaoxVO vo)
	{
		dao.InsertLaox(vo);
	}
	/**
	 * 老乡留言 信息修改
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void getUpdateLaox(LaoxVO vo)
	{
		dao.UpdateLaox(vo);
	}
	/**
	 * 老乡留言删除
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param ID
	 */
	public void getDelLaox(String id)
	{
		dao.DelLaox(id);
	}
	/**
	 * 老乡留言 列表
	 * @return
	 */
	public List getListLaox()
	{
		arr =new ArrayList();
		arr=dao.ListLaox();
		return arr;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-2-12
	 * @return
	 */
	public List getListLaoxOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListLaoxOne(id);
		return arr;
	}
	
}
