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
	 * ����
	 * @param vo
	 */
	public void getInsertOffice(OfficeVO vo)
	{
		dao.InsertOffice(vo);
	}
	/**
	 * ���´� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdateOffice(OfficeVO vo)
	{
		dao.UpdateOffice(vo);
	}
	/**
	 * ��������ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelOffice(OfficeVO vo)
	{
		
	}
	/**
	 * ���´� �б�
	 * @return
	 */
	public List getListOffice()
	{
		arr =new ArrayList();
		 arr=dao.ListOffice();
		return arr;
	}
}
