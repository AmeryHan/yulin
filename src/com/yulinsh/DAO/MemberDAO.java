package com.yulinsh.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.yulinsh.vo.MemberVO;

import soja.base.RandomStrg;

 

/**
 * 会员随笔
 * @author Administrator
 *
 */
public class MemberDAO {
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
	 * 会员随笔添加 添加
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void InsertMember(MemberVO vo)
	{
		String userid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss ");
			String datetime=tempDate.format(new java.util.Date());

			userid=RandomStrg.getGUID();
			sql="insert into membertable(memberid,userid,username,membertitle,membercontent,membertime)" +
					"values('"+userid+"','1','马伟',?,?,'"+datetime+"')";
			 Object []args = new Object[]{
					 
//					 vo.getUsername(),
//					 vo.getUserid(),
					 vo.getMembertitle(),
					 vo.getMembercontent()
//					 vo.getMembertime() 
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 会员随笔  信息修改
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param vo
	 */
	public void UpdateMember(MemberVO vo)
	{
 
		try { 
			sql="update membertable set  userid=?,username=?,membertitle=?,membercontent=?,membertime=? where memberid=?";//5
			 Object []args = new Object[]{
					 vo.getUserid(),
					 vo.getUsername(),
					 vo.getMembertitle(),
					 vo.getMembercontent(),
					 vo.getMembertime(),
					 vo.getMemberid()
				 
			 };
			template.update(sql, args);
		
		
			System.err.println("sql update ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 会员随笔 删除
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param ID
	 */
	public void DelMember(String id)
	{
		try { 
			sql=" delete from membertable  where memberid='"+id+"'";// 
			 Object []args = new Object[]{
			 
				   
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 会员随笔  查询数据
	 * 创建人：Eric 创建时间：2012-2-12
	 */
	public List ListMember()
	{
		String sql ="select * from membertable    order by membertime   desc";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{  
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				MemberVO  vo = new MemberVO();
				 vo.setUserid(rs.getString("userid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setMembertitle(rs.getString("membertitle"));
				 vo.setMembercontent(rs.getString("membercontent"));
				 vo.setMembertime(rs.getString("membertime"));
				 vo.setMemberid(rs.getString("memberid"));
		 
				return vo;
			}
			 
		});
		return list;
	}
	
	/**
	 * 会员随笔 显示一条数据
	 * 创建人：Eric 创建时间：2012-2-12
	 * @param id
	 */
	public List ListMemberOne(String id)
	{
		String sql ="select * from membertable t   where  memberid='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				MemberVO  vo = new MemberVO();
				 vo.setUserid(rs.getString("userid"));
				 vo.setUsername(rs.getString("username"));
				 vo.setMembertitle(rs.getString("membertitle"));
				 vo.setMembercontent(rs.getString("membercontent"));
				 vo.setMembertime(rs.getString("membertime"));
				 vo.setMemberid(rs.getString("memberid"));
		 
		 
				return vo;
			}
			
		});
		return list;
	}

}
