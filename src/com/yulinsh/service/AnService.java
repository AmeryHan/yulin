package com.yulinsh.service;

import java.util.ArrayList;
import java.util.List;

import com.yulinsh.DAO.AnDAO;
import com.yulinsh.DAO.NewsDAO;
import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.NewsVO;

/**
 * 公告
 * @author Eric
 *
 */
public class AnService {
	List arr;
	List arr1;
	AnDAO dao;

 
 
	/**
	 * 新闻动态 
	 * @param vo
	 */
	public void getInsertAn(AnnouncementVO vo)
	{
		dao.InsertAn(vo);
	}
 
	public void updateAn(AnnouncementVO vo,String id)
	{
		dao.updateAn(vo, id);
	}
	
	/**
	 * 新闻动态 删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void getDelAn(String vo)
	{
		dao.DelAn(vo);
	}
	/**
	 * 新闻动态  列表
	 * @return
	 */
	public List getListAn()
	{
		arr =new ArrayList();
		arr=dao.ListAn();
		return arr;
	}
	/**
	 * 新闻动态  列表
	 * @return
	 */
	public List getListAn2()
	{
		arr =new ArrayList();
		arr=dao.ListAn2();
		return arr;
	}
	/**
	 * 显示一条数据
	 * @param id
	 * @return 
	 */
	public AnnouncementVO getListAnOne(String id)
	{
		//arr1 =new ArrayList();
		AnnouncementVO arr1=dao.ListAnOne(id);
		return arr1;
	}
	/**
	 * 新闻动态  列表
	 * @return
	 */
	public List getListNews()
	{
		arr =new ArrayList();
		arr=dao.ListNews();
		return arr;
	}
	/**
	 * 政策动向 查询
	 * 创建人：Eric 创建时间：2012-1-2
	 * @return
	 */
	public List getListPolicy()
	{
		arr =new ArrayList();
		arr=dao.ListPolicy();
		return arr;
	}
	/**
	 * 家乡 查询
	 * 创建人：Eric 创建时间：2012-1-2
	 * @return
	 */
	public List getListHometown()
	{
		arr =new ArrayList();
		arr=dao.ListHometown();
		return arr;
	}
	/**
	 * 会员随笔 列表
	 * @return
	 */
	public List getListMember()
	{
		arr =new ArrayList();
		arr=dao.ListMember();
		return arr;
	}
	public AnDAO getDao() {
		return dao;
	}
	public void setDao(AnDAO dao) {
		this.dao = dao;
	}
	
	/**
	 * 老乡留言 列表
	 * @return
	 */
	public List getListLaox()
	{
		arr =new ArrayList();
		arr=dao.ListLaox();
		return arr;
	}
	
	/**
	 *企业 列表
	 * @return
	 */
	public List getListqye()
	{
		arr =new ArrayList();
		arr=dao.Listqye();
		return arr;
	}
	
	/**
	 * 会员 列表
	 * @return
	 */
	public List getListqhy()
	{
		arr =new ArrayList();
		arr=dao.Listqhy();
		return arr;
	}
	/**
	 * 组织机构 列表
	 * @return
	 */
	public List getListZuZhiXS()
	{
		arr =new ArrayList();
		arr=dao.ListZuZhiXS();
		return arr;
	}
	
}
