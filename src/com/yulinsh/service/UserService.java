package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.UserDAO;
import com.yulinsh.vo.UserVo;

public class UserService {

	UserDAO dao;

	public UserDAO getDao() {
		return dao;
	}

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	/**
	 * gn:insert
	 * �����ˣ�mxw   �������ڣ�2009-11-14
	 */
	public void getInset(UserVo vo)
	{
		dao.getInset(vo);
	}
	/**
	 * gn:select 
	 * �����ˣ�mxw    �������ڣ�2009��11��22
	 */
	public List getSelect(UserVo vo)
	{
		List arr =new ArrayList();
		  arr=dao.getUserSel();
		return arr;
	}
}
