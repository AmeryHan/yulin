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
	 * ��������
	 * @param vo
	 */
	public void getInsertLaox(LaoxVO vo)
	{
		dao.InsertLaox(vo);
	}
	/**
	 * �������� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @param vo
	 */
	public void getUpdateLaox(LaoxVO vo)
	{
		dao.UpdateLaox(vo);
	}
	/**
	 * ��������ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @param ID
	 */
	public void getDelLaox(String id)
	{
		dao.DelLaox(id);
	}
	/**
	 * �������� �б�
	 * @return
	 */
	public List getListLaox()
	{
		arr =new ArrayList();
		arr=dao.ListLaox();
		return arr;
	}
	/**
	 * ��ʾһ������
	 * �����ˣ�Eric ����ʱ�䣺2012-2-12
	 * @return
	 */
	public List getListLaoxOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListLaoxOne(id);
		return arr;
	}
	
}
