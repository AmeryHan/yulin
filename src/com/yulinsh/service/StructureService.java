package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.NewsDAO;
import com.yulinsh.DAO.StructureDAO;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.StructureVO;

public class StructureService {
	List arr;
	StructureDAO dao;

 

 
	/**
	 *组织机构 
	 * @param vo
	 */
	public StructureVO getInsertZuZhi(StructureVO vo)
	{
		
		StructureVO arr=dao.InsertZuZhi(vo);
		return arr;
	}
 
	/**
	 *组织机构 删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void getDelZuZhi(String id)
	{
		dao.DelZuZhi(id);
	}
	
	/**
	 * 个人申请 信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void getUpdateZuZhi(StructureVO vo,String id)
	{
		dao.UpdateZuZhi(vo,id);
	}
	/**
	 *组织机构  列表
	 * @return
	 */
	public List getListZuZhi()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhi();
		return arr;
	}
	/**
	 *组织机构  列表
	 * @return
	 */
	public List getListZuZhiXS()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhiXS();
		return arr;
	}
	
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-1-2
	 * @return
	 */
	public StructureVO getListZuZhiOne(String id)
	{
		//arr =new ArrayList();
		StructureVO arr=dao.ListZuZhiOne(id);
		return arr;
	}

	public StructureDAO getDao() {
		return dao;
	}

	public void setDao(StructureDAO dao) {
		this.dao = dao;
	}
	
}
