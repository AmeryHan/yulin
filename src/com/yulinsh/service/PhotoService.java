package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.PhotoDAO;
 

public class PhotoService {
	List arr;
	List arr1;
	PhotoDAO dao;
	/**
	 * Õº∆¨ÃÌº” 
	 * @param vo
	 */
	public void getInsertAn(String url,String type)
	{
		dao.InsertAn(url, type);
	}
	/**
	 * Õº∆¨≤È—Ø 
	 * @param vo
	 */
	public List getSelectPhoto()
	{
		
		arr =new ArrayList();
		 arr=dao.SelectPhoto();
		return arr;
	}
	/**
	 * Õº∆¨≤È—Ø ∑÷“≥
	 * @param vo
	 */
	public List getSelectPhotoFy(String statidenx,String endidenx)
	{
		
		arr =new ArrayList();
		 arr=dao.SelectPhotofy(statidenx,endidenx);
		return arr;
	}
	/**
	 * Õº∆¨≤È—Ø “ª’≈
	 * @param vo
	 */
	public List getSelectPhotoOne(String id)
	{
		
		arr =new ArrayList();
		 arr=dao.getSelectPhotoOne(id);
		return arr;
	}
	
	/**
	 * Õº∆¨…æ≥˝
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
