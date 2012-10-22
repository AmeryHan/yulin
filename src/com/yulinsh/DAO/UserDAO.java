package com.yulinsh.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

 
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import soja.base.RandomStrg;

import com.yulinsh.vo.UserVo;

public class UserDAO {
	private PreparedStatement pstmt=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	private String sql="";

	JdbcTemplate  template;
	/**
	 * 功能：自动增长
	 * 创建人：mxw   创建日期：2009-11-14
	 */
	public  int getUserID()
	{
		int userid=0;
		try {
			//stmt=db.createStatement();
			sql="";
			rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				userid=rs.getInt("userid");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userid;
	}
	/**
	 * 功能；insert
	 * 创建人：mxw  创建时间：2009-11-14
	 */
	public void getInset(UserVo vo)
	{
			String userid="";
		try {
			//stmt=db.createStatement();
			//sql="insert into userinfo (userid,username,useradrr) values(3,'"+vo.getUserName()+"','"+vo.getUserAdrr()+"')";
			userid=RandomStrg.getGUID();
			sql="insert into userinfo (userid,username,useradrr) values('"+userid+"',?,?)";
			 Object []args = new Object[]{
					// vo.getUserid(),
					 vo.getUserName(),
					 vo.getUserAdrr()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 功能：select 
	 * 创建人：mxw     创建日期：2009-11-14
	 */
	public  List  getUserSel()
	{
		String sql ="select * from userinfo t   ";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				UserVo customvo = new UserVo();
				customvo.setUserAdrr(rs.getString("userAdrr"));
				customvo.setUserName(rs.getString("userName"));


				return customvo;
			}
//			http://springide.org/updatesite/ 
		});
		return list;
	}
	public JdbcTemplate getTemplate() {
		return template;
	}
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
}
