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
	 *��֯���� 
	 * @param vo
	 */
	public List getInsertZuZhi(StructureVO vo)
	{
		
		arr=dao.InsertZuZhi(vo);
		return arr;
	}
 
	/**
	 *��֯���� ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelZuZhi(String id)
	{
		dao.DelZuZhi(id);
	}
	
	/**
	 * �������� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdateZuZhi(StructureVO vo,String id)
	{
		dao.UpdateZuZhi(vo,id);
	}
	/**
	 *��֯����  �б�
	 * @return
	 */
	public List getListZuZhi()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhi();
		return arr;
	}
	/**
	 *��֯����  �б�
	 * @return
	 */
	public List getListZuZhiXS()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhiXS();
		return arr;
	}
	
	/**
	 * ��ʾһ������
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @return
	 */
	public List getListZuZhiOne(String id)
	{
		arr =new ArrayList();
		arr=dao.ListZuZhiOne(id);
		return arr;
	}

	public StructureDAO getDao() {
		return dao;
	}

	public void setDao(StructureDAO dao) {
		this.dao = dao;
	}
	
}
