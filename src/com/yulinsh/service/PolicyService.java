package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.PolicyDAO;
import com.yulinsh.vo.PolicyVO;

 

public class PolicyService {
	List arr;
	PolicyDAO dao;

 
 
	/**
	 * ���Ŷ�̬ 
	 * @param vo
	 */
	public void getInsertPolicy(PolicyVO vo)
	{
		dao.InsertPolicy(vo);
	}
	/**
	 * ���Ŷ�̬  ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @param vo
	 */
	public void getUpdatePolicy(PolicyVO vo)
	{
		dao.UpdatePolicy(vo);
	}
	/**
	 * ���Ŷ�̬ ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @param ID
	 */
	public void getDelPolicy(String  id)
	{
		dao.DelPolicy(id);
	}
	/**
	 * ���Ŷ�̬  �б�
	 * @return
	 */
	public List getListPolicy()
	{
		arr =new ArrayList();
		arr=dao.ListPolicy();
		return arr;
	}
	/**
	 * ��ʾһ������
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
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
