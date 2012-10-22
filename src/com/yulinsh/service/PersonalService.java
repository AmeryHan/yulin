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
	 * ����
	 * @param vo
	 */
	public List getInsertPersonal(PersonalVO vo)
	{
		arr=dao.InsertPersonal(vo);
		return arr;
	}
	/**
	 * �������� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdatePersonal(String id)
	{
		dao.UpdatePersonal(id);
	}
	/**
	 * �������� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdatePersonal(PersonalVO vo,String id)
	{
		dao.UpdatePersonal(vo,id);
	}
	/**
	 * ��������ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelPersonal(String  pdid)
	{
		dao.DelPersonal(pdid);
	}
	/***
	 * ��ѯ��������
	 * @return
	 */
	public List getListPersonal()
	{
		arr =new ArrayList();
		 arr=dao.ListPersonal();
		return arr;
	}
	/***
	 * �������ݲ�ѯ
	 * @return
	 */
	public List getListPersonalOne(String  pdid)
	{
		arr =new ArrayList();
		 arr=dao.ListPersOne(pdid);
		return arr;
	}
 
}
