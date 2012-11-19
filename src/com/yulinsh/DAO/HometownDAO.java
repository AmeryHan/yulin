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

import com.yulinsh.vo.HometownVO;

/**
 * 家乡dao
 * @author Eric
 *
 */
public class HometownDAO {
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
	 * 家乡添加 添加
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void InsertHometown(HometownVO vo)
	{
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into hometowntable( homeid, username,useid,hometitle,homecontent,hometime )" +
					"values('"+userid+"',?,'1',?,?,'"+datetime+"')";
			 Object []args = new Object[]{
					 
					 vo.getUsername(),
//					 vo.getUserid(),
					 vo.getHometitle(),
					 vo.getHomecontent()
//					 vo.getHometime() 
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 家乡  信息修改
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void UpdateHometown(HometownVO vo)
	{
 
		try { 
			sql="update hometowntable set  username=?,useid=?,hometitle=?,homecontent=?,hometime=?  where homeid=?";//5
			 Object []args = new Object[]{
					 vo.getUsername(),
					 vo.getUserid(),
					 vo.getHometitle(),
					 vo.getHomecontent(),
					 vo.getHometime(), 
					 vo.getHomeid()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql update ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 家乡 删除
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param ID
	 */
	public void DelHometown(String id)
	{
		try { 
			sql=" delete from hometowntable  where homeid='"+id+"' order by hometime   desc";// 
			 Object []args = new Object[]{
			 
				   
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 家乡  查询数据
	 * 创建人：Eric 创建时间：2012-2-12
	 */
	public List ListHometown()
	{
		String sql ="select * from hometowntable   order by hometime   desc ";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{ 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				HometownVO  vo = new HometownVO();
				 vo.setHomeid(rs.getString("homeid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setUserid(rs.getString("useid"));
				 vo.setHometitle(rs.getString("hometitle"));
				 vo.setHomecontent(rs.getString("homecontent"));
				 vo.setHometime(rs.getString("hometime")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	
	/**
	 * 家乡 显示一条数据
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param id
	 */
	public List ListHometownOne(String id)
	{
		String sql ="select * from hometowntable t   where  homeid='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				HometownVO  vo = new HometownVO();
				 vo.setHomeid(rs.getString("homeid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setUserid(rs.getString("useid"));
				 vo.setHometitle(rs.getString("hometitle"));
				 vo.setHomecontent(rs.getString("homecontent"));
				 vo.setHometime(rs.getString("hometime")); 
		 
				return vo;
			}
			
		});
		return list;
	}

}
