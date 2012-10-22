package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.LaoxDAO;
import com.yulinsh.DAO.MemberDAO;
import com.yulinsh.vo.LaoxVO;
import com.yulinsh.vo.MemberVO;

public class MemberService {
	List arr;
	MemberDAO dao;

	public MemberDAO getDao() {
		return dao;
	}

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

 
	/**
	 * 会员随笔
	 * @param vo
	 */
	public void getInsertMember(MemberVO vo)
	{
		dao.InsertMember(vo);
	}
	/**
	 * 会员随笔 信息修改
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void getUpdateMember(MemberVO vo)
	{
		dao.UpdateMember(vo);
	}
	/**
	 * 会员随笔删除
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param ID
	 */
	public void getDelMember(String id)
	{
		dao.DelMember(id);
	}
	/**
	 * 会员随笔 列表
	 * @return
	 */
	public List getListMember()
	{
		arr =new ArrayList();
		arr=dao.ListMember();
		return arr;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-2-12
	 * @return
	 */
	public List getListMemberOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListMemberOne(id);
		return arr;
	}
	
}
