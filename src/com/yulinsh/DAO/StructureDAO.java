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

import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.StructureVO;

public class StructureDAO {
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
	 * 组织机构添加
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public StructureVO InsertZuZhi(StructureVO vo)
	{
		StructureVO arr=null;
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into zuzhitable (id,stoux,sname,ssex,sshzw,sjs) " +
					"values('"+userid+"',?,?,?,? ,?)";//5
			 Object []args = new Object[]{
					 vo.getStoux(),
					 vo.getSname(),
					 vo.getSsex(),
					 vo.getSshzw(),
					 vo.getSjs()
					 
			
			 };
			template.update(sql, args);
		
			arr =ListZuZhiOne(userid);
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
		return arr;
	}
	 
	/**
	 * 组织机构删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void DelZuZhi(String id)
	{
		try { 
			sql=" delete from zuzhitable  where id='"+id+"'";// 
			 Object []args = new Object[]{
			 
//				     vo.getZuZhiId()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	
	/**
	 *组织结构 信息修改 创建人：Eric 创建时间：2011-12-1
	 * 
	 * @param vo
	 */
	public void UpdateZuZhi(StructureVO vo,String id) {
		try {

			// update 表明 set pname= where pID=
			sql = "update zuzhitable set   sname=?,ssex=?,sshzw=?,sjs=?  where id='"+id+"'";// 13
			Object[] args = new Object[] { 
				 
					 vo.getSname(),
					 vo.getSsex(),
					 vo.getSshzw(),
					 vo.getSjs()
               
				 
					};
			template.update(sql, args);
			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	
	public void updateTupian(StructureVO vo,String id) {
		try {

			// update 表明 set pname= where pID=
			sql = "update zuzhitable set stoux=? where id='"+id+"'";// 13
			Object[] args = new Object[] { 
					 vo.getStoux()
					};
			template.update(sql, args);
			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	/**
	 * 组织机构 查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListZuZhi()
	{
		String sql ="select * from zuzhitable    order by sshzw desc";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				StructureVO  vo = new StructureVO();
				 vo.setId(rs.getString("id"));
				 vo.setStoux(rs.getString("stoux"));
				 vo.setSname(rs.getString("sname"));
				 vo.setSsex(rs.getString("ssex"));
				 vo.setSshzw(rs.getString("sshzw"));
				 vo.setSjs(rs.getString("sjs"));
	 
				return vo;
			}
			
		});
		return list;
	}
	
	/**
	 * 组织机构 查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListZuZhiXS()
	{
		String sql ="select * from zuzhitable   order by sshzw desc ";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				StructureVO  vo = new StructureVO();
				 vo.setId(rs.getString("id"));
				 vo.setStoux(rs.getString("stoux"));
				 vo.setSname(rs.getString("sname"));
				 vo.setSsex(rs.getString("ssex"));
				 vo.setSshzw(rs.getString("sshzw"));
				 vo.setSjs(rs.getString("sjs"));
	 
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
	public StructureVO ListZuZhiOne(String id)
	{
		String sql ="select * from zuzhitable t   where  id='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				StructureVO  vo = new StructureVO();
				 vo.setId(rs.getString("id"));
				 vo.setStoux(rs.getString("stoux"));
				 vo.setSname(rs.getString("sname"));
				 vo.setSsex(rs.getString("ssex"));
				 vo.setSshzw(rs.getString("sshzw"));
				 vo.setSjs(rs.getString("sjs"));
				return vo;
			}
			
		});
		if(null != list && list.size() >0){
			return (StructureVO)list.get(0);
		}
		return null;
	}
}
