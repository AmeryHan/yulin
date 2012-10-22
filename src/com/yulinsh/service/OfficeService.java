package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.OfficeDAO;
import com.yulinsh.DAO.PersonalDAO;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.OfficeVO;
import com.yulinsh.vo.PersonalVO;

public class OfficeService {

	List arr;
	OfficeDAO dao;

	public OfficeDAO getDao() {
		return dao;
	}

	public void setDao(OfficeDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 申请
	 * @param vo
	 */
	public void getInsertOffice(OfficeVO vo)
	{
		dao.InsertOffice(vo);
	}
	/**
	 * 办事处 信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void getUpdateOffice(OfficeVO vo)
	{
		dao.UpdateOffice(vo);
	}
	/**
	 * 个人申请删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void getDelOffice(OfficeVO vo)
	{
		
	}
	/**
	 * 办事处 列表
	 * @return
	 */
	public List getListOffice()
	{
		arr =new ArrayList();
		 arr=dao.ListOffice();
		return arr;
	}
}
