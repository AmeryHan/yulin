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
	
	public OtherDAO getDao() {
		return dao;
	}
	public void setDao(OtherDAO dao) {
		this.dao = dao;
	}
	
	
	public AnnouncementVO getLatestOne(String type) {
		AnnouncementVO announcementVO = dao.getLatestOne(type);
		return announcementVO;
		
	}
	
}
