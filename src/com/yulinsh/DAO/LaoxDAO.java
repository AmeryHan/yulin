package com.yulinsh.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.yulinsh.vo.LaoxVO;

import soja.base.RandomStrg;

 

/**
 *  
 * @author Administrator
 *
 */
public class LaoxDAO {
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
	 *  012-2-12
	 * @param vo
	 */
	public void InsertLaox(LaoxVO vo)
	{
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into laoxtable(laoxid,userid,username,laoxcontent,laoxtime)" +
					"values('"+userid+"','1','ÂíÎ°','"+vo.getLaoxcontent()+"','"+datetime+"')";
			 Object []args = new Object[]{
					 
//					 vo.getUsername(),
//					 vo.getUserid(),
//					 vo.getLaoxcontent()
//					 vo.getLaoxtime() 
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 2012-2-12
	 * @param vo
	 */
	public void UpdateLaox(LaoxVO vo)
	{
 
		try { 
			sql="update laoxtable set userid=?,username=?,laoxcontent=?,laoxtime=?  where laoxid=?";//5
			 Object []args = new Object[]{
					 vo.getUserid(),
					 vo.getUsername(),
					 vo.getLaoxcontent(),
					 vo.getLaoxtime(),
					 vo.getLaoxid()
				 
			 };
			template.update(sql, args);
		
		
			System.err.println("sql update ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 *  £º2012-2-12
	 * @param ID
	 */
	public void DelLaox(String id)
	{
		try { 
			sql=" delete from laoxtable  where laoxid='"+id+"'";// 
			 Object []args = new Object[]{
			 
				   
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 *  2012-2-12
	 */
	public List ListLaox()
	{
		String sql ="select * from laoxtable    order by laoxtime   desc";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{  
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				LaoxVO  vo = new LaoxVO();
				 vo.setUserid(rs.getString("userid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setLaoxcontent(rs.getString("laoxcontent"));
				 vo.setLaoxtime(rs.getString("laoxtime"));
				 vo.setLaoxid(rs.getString("laoxid"));
		 
				return vo;
			}
			
		});
		return list;
	}
	
	/**
	 *
	 £º2012-2-12
	 * @param id
	 */
	public List ListLaoxOne(String id)
	{
		String sql ="select * from laoxtable t   where  laoxid='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				LaoxVO  vo = new LaoxVO();
				 vo.setUserid(rs.getString("userid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setLaoxcontent(rs.getString("laoxcontent"));
				 vo.setLaoxtime(rs.getString("laoxtime"));
				 vo.setLaoxid(rs.getString("laoxid"));
		 
		 
				return vo;
			}
			
		});
		return list;
	}

}
