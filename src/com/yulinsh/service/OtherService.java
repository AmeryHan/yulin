package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.OtherDAO;
import com.yulinsh.vo.AnnouncementVO;

/**
 * ����
 * @author Eric
 *
 */
public class OtherService {
	List arr;
	List arr1;
	OtherDAO dao;

 
 
	/**
	 * ���Ŷ�̬ 
	 * @param vo
	 */
	public void addOrUpdate(AnnouncementVO vo)
	{
		dao.addOrUpdate(vo);
	}
 
	/**
	 * ���Ŷ�̬ ɾ��
	 * �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * @param ID
	 */
	public void getDelAn(String vo)
	{
		dao.DelAn(vo);
	}
	/**
	 * ���Ŷ�̬  �б�
	 * @return
	 */
	public List getListAn()
	{
		arr =new ArrayList();
		arr=dao.ListAn();
		return arr;
	}
	/**
	 * ���Ŷ�̬  �б�
	 * @return
	 */
	public List getListAn2()
	{
		arr =new ArrayList();
		arr=dao.ListAn2();
		return arr;
	}
	/**
	 * ��ʾһ������
	 * @param id
	 * @return 
	 */
	public List getListAnOne(String id)
	{
		arr1 =new ArrayList();
		arr1=dao.ListAnOne(id);
		return arr1;
	}
	/**
	 * ���Ŷ�̬  �б�
	 * @return
	 */
	public List getListNews()
	{
		arr =new ArrayList();
		arr=dao.ListNews();
		return arr;
	}
	/**
	 * ���߶��� ��ѯ
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @return
	 */
	public List getListPolicy()
	{
		arr =new ArrayList();
		arr=dao.ListPolicy();
		return arr;
	}
	/**
	 * ���� ��ѯ
	 * �����ˣ�Eric ����ʱ�䣺2012-1-2
	 * @return
	 */
	public List getListHometown()
	{
		arr =new ArrayList();
		arr=dao.ListHometown();
		return arr;
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
	public OtherDAO getDao() {
		return dao;
	}
	public void setDao(OtherDAO dao) {
		this.dao = dao;
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
	 *��ҵ �б�
	 * @return
	 */
	public List getListqye()
	{
		arr =new ArrayList();
		arr=dao.Listqye();
		return arr;
	}
	
	/**
	 * ��Ա �б�
	 * @return
	 */
	public List getListqhy()
	{
		arr =new ArrayList();
		arr=dao.Listqhy();
		return arr;
	}
	/**
	 * ��֯���� �б�
	 * @return
	 */
	public List getListZuZhiXS()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhiXS();
		return arr;
	}

	public AnnouncementVO getLatestOne(String type) {
		AnnouncementVO announcementVO = dao.getLatestOne(type);
		return announcementVO;
		
	}
	
}
