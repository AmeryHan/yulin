package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.PhotoDAO;
 

public class PhotoService {
	List arr;
	List arr1;
	PhotoDAO dao;
	/**
	 * ͼƬ��� 
	 * @param vo
	 */
	public void getInsertAn(String url,String type)
	{
		dao.InsertAn(url, type);
	}
	/**
	 * ͼƬ��ѯ 
	 * @param vo
	 */
	public List getSelectPhoto()
	{
		
		arr =new ArrayList();
		 arr=dao.SelectPhoto();
		return arr;
	}
	/**
	 * ͼƬ��ѯ ��ҳ
	 * @param vo
	 */
	public List getSelectPhotoFy(String statidenx,String endidenx)
	{
		
		arr =new ArrayList();
		 arr=dao.SelectPhotofy(statidenx,endidenx);
		return arr;
	}
	/**
	 * ͼƬ��ѯ һ��
	 * @param vo
	 */
	public List getSelectPhotoOne(String id)
	{
		
		arr =new ArrayList();
		 arr=dao.getSelectPhotoOne(id);
		return arr;
	}
	
	/**
	 * ͼƬɾ��
	 * @param vo
	 */
	public void getDelPhoto(String id)
	{
		
		dao.DelPhoto(id);
	}
	
	public PhotoDAO getDao() {
		return dao;
	}
	public void setDao(PhotoDAO dao) {
		this.dao = dao;
	}
}
