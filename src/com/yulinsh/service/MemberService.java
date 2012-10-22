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
	 * ��Ա���
	 * @param vo
	 */
	public void getInsertMember(MemberVO vo)
	{
		dao.InsertMember(vo);
	}
	/**
	 * ��Ա��� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @param vo
	 */
	public void getUpdateMember(MemberVO vo)
	{
		dao.UpdateMember(vo);
	}
	/**
	 * ��Ա���ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @param ID
	 */
	public void getDelMember(String id)
	{
		dao.DelMember(id);
	}
	/**
	 * ��Ա��� �б�
	 * @return
	 */
	public List getListMember()
	{
		arr =new ArrayList();
		arr=dao.ListMember();
		return arr;
	}
	/**
	 * ��ʾһ������
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @return
	 */
	public List getListMemberOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListMemberOne(id);
		return arr;
	}
	
}
