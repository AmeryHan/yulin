package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.PolicyDAO;
import com.yulinsh.vo.PolicyVO;

 

public class PolicyService {
	List arr;
	PolicyDAO dao;

 
 
	/**
	 * 新闻动态 
	 * @param vo
	 */
	public void getInsertPolicy(PolicyVO vo)
	{
		dao.InsertPolicy(vo);
	}
	/**
	 * 新闻动态  信息修改
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param vo
	 */
	public void getUpdatePolicy(PolicyVO vo)
	{
		dao.UpdatePolicy(vo);
	}
	/**
	 * 新闻动态 删除
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param ID
	 */
	public void getDelPolicy(String  id)
	{
		dao.DelPolicy(id);
	}
	/**
	 * 新闻动态  列表
	 * @return
	 */
	public List getListPolicy()
	{
		arr =new ArrayList();
		arr=dao.ListPolicy();
		return arr;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-1-2
	 * @return
	 */
	public List getListPolicyOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListPolicyOne(id);
		return arr;
	}
	public PolicyDAO getDao() {
		return dao;
	}
	public void setDao(PolicyDAO dao) {
		this.dao = dao;
	}
	
}
