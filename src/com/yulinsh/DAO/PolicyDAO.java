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
import com.yulinsh.vo.PolicyVO;

/**
 * 政策动向数据处理
 * @author Eric
 *String policyId="";
	String policyTitle="";
	String policyAuthor ="";
	String policyTime="";
	String policyContent="";
 */
public class PolicyDAO {
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
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param vo
	 */
	public void InsertPolicy(PolicyVO vo)
	{
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd ");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into policytable (policyId ,policyTitle, policyAuthor , policyTime, policyContent) " +
					"values('"+userid+"',?,?,'"+datetime+"',? )";//5
			 Object []args = new Object[]{
					 vo.getPolicyTitle(),
					 vo.getPolicyAuthor(),
//					 vo.getPolicyTime(),
					 vo.getPolicyContent() 
					 
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 新闻动态  信息修改
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param vo
	 */
	public void UpdatePolicy(PolicyVO vo)
	{
 
		try { 
			sql="update policytable set policyId=? ,policyTitle=? , policyAuthor =? , policyTime=? , policyContent=? ) where policyId=?";//5
			 Object []args = new Object[]{
					 vo.getPolicyTitle(),
					 vo.getPolicyAuthor(),
					 vo.getPolicyTime(),
					 vo.getPolicyContent(), 
				     vo.getPolicyId()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql update ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 新闻动态 删除
	 * 创建人：Eric 创建时间：2012-1-2
	 * @param ID
	 */
	public void DelPolicy(String  id)
	{
		try { 
			sql=" delete from policytable  where policyId='"+id+"'";// 
			 Object []args = new Object[]{
			 
//				     vo.getPolicyId()
			
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
	public List ListPolicy()
	{
		String sql ="select * from policytable order by policyTime   desc  ";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				PolicyVO  vo = new PolicyVO();
				 vo.setPolicyId(rs.getString("policyId"));
				 vo.setPolicyTitle(rs.getString("policyTitle"));
				 vo.setPolicyAuthor(rs.getString("policyAuthor"));
				 vo.setPolicyTime(rs.getString("policyTime"));
				 vo.setPolicyContent(rs.getString("policyContent")); 
		 
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
	public List ListPolicyOne(String id)
	{	
		String sql ="select * from policytable t   where  policyId='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				PolicyVO  vo = new PolicyVO();
				 vo.setPolicyId(rs.getString("policyId"));
				 vo.setPolicyTitle(rs.getString("policyTitle"));
				 vo.setPolicyAuthor(rs.getString("policyAuthor"));
				 vo.setPolicyTime(rs.getString("policyTime"));
				 vo.setPolicyContent(rs.getString("policyContent")); 
		 
				return vo;
			}
			
		});
		return list;
	}
}
