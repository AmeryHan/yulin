package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.PersonalDAO;
import com.yulinsh.DAO.UnitDAO;
import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.UnitVO;

/**
 * 
 * @author eric 
 *
 */
public class UnitService {
	List arr;
	UnitDAO dao;

	public UnitDAO getDao() {
		return dao;
	}

	public void setDao(UnitDAO dao) {
		this.dao = dao;
	}
	/**
	 * ����
	 * @param vo
	 */
	public void getInsertUnit(UnitVO vo)
	{
		dao.InsertUnit(vo);
	}
	/**
	 * �������� ��Ϣ�޸�
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param vo
	 */
	public void getUpdateUnit(String  id)
	{
		dao.UpdateUnit(id);
	}
	/**
	 * ��������ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelUnit(  String vo)
	{
		dao.DelUnit(vo);
	}
	public List getListUnit()
	{
		arr =new ArrayList();
		 arr=dao.ListUnit();
		return arr;
	}
	/***
	 * ������λ��ѯ
	 * @return
	 */
	public List getListUnitOne(String id)
	{
		arr =new ArrayList();
		 arr=dao.ListUnitOne(id);
		return arr;
	}
}
