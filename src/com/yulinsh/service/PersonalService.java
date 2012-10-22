package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

 
import com.yulinsh.DAO.PersonalDAO;
import com.yulinsh.DAO.UserDAO;
import com.yulinsh.vo.PersonalVO;

public class PersonalService {

	List arr;
	PersonalDAO dao;

	public PersonalDAO getDao() {
		return dao;
	}

	public void setDao(PersonalDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 申请
	 * @param vo
	 */
	public List getInsertPersonal(PersonalVO vo)
	{
		arr=dao.InsertPersonal(vo);
		return arr;
	}
	/**
	 * 个人申请 信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void getUpdatePersonal(String id)
	{
		dao.UpdatePersonal(id);
	}
	/**
	 * 个人申请 信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void getUpdatePersonal(PersonalVO vo,String id)
	{
		dao.UpdatePersonal(vo,id);
	}
	/**
	 * 个人申请删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void getDelPersonal(String  pdid)
	{
		dao.DelPersonal(pdid);
	}
	/***
	 * 查询所有数据
	 * @return
	 */
	public List getListPersonal()
	{
		arr =new ArrayList();
		 arr=dao.ListPersonal();
		return arr;
	}
	/***
	 * 单挑数据查询
	 * @return
	 */
	public List getListPersonalOne(String  pdid)
	{
		arr =new ArrayList();
		 arr=dao.ListPersOne(pdid);
		return arr;
	}
 
}
