package com.yulinsh.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import soja.base.RandomStrg;

import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.OfficeVO;

/**
 * 新闻动态
 *  NewsTable
   NewsId NewsTitle, NewsAuthor , NewsTime, NewsContent
 * @author Eric
 *
 */
public class NewsDAO {
	private PreparedStatement pstmt=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	private JdbcTemplate template;
	public JdbcTemplate getTemplate() {
		return template;
	}
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	/**
	 * 新闻动态 添加
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void InsertNews(NewsVO vo)
	{
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into newstable (NewsId ,NewsTitle, NewsAuthor , NewsTime, NewsContent) " +
					"values('"+userid+"',?,?,'"+datetime+"',? )";//5
			 Object []args = new Object[]{
					 vo.getNewsTitle(),
					 vo.getNewsAuthor(),
//					 vo.getNewsTime(),
					 vo.getNewsContent() 
					 
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 新闻动态  信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void UpdateNews(NewsVO vo)
	{
 
		try { 
			sql="update newstable set NewsId=? ,NewsTitle=? , NewsAuthor =? , NewsTime=? , NewsContent=? ) where NewsId=?";//5
			 Object []args = new Object[]{
					 vo.getNewsTitle(),
					 vo.getNewsAuthor(),
					 vo.getNewsTime(),
					 vo.getNewsContent(), 
				     vo.getNewsId()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql update ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 新闻动态 删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void DelNews(String id)
	{
		try { 
			sql=" delete from newstable  where NewsId='"+id+"'";// 
			 Object []args = new Object[]{
			 
//				     vo.getNewsId()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 新闻动态  查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListNews()
	{
		String sql ="select * from newstable    order by NewsTime   desc";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				NewsVO  vo = new NewsVO();
				 vo.setNewsId(rs.getString("NewsId"));
				 vo.setNewsTitle(rs.getString("NewsTitle"));
				 vo.setNewsAuthor(rs.getString("NewsAuthor"));
				 vo.setNewsTime(rs.getString("NewsTime"));
				 vo.setNewsContent(rs.getString("NewsContent")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param id
	 */
	public List ListNewsOne(String id)
	{
		String sql ="select * from newstable t   where  NewsId='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				NewsVO  vo = new NewsVO();
				 vo.setNewsId(rs.getString("NewsId"));
				 vo.setNewsTitle(rs.getString("NewsTitle"));
				 vo.setNewsAuthor(rs.getString("NewsAuthor"));
				 vo.setNewsTime(rs.getString("NewsTime"));
				 vo.setNewsContent(rs.getString("NewsContent")); 
		 
				return vo;
			}
			
		});
		return list;
	}
}
