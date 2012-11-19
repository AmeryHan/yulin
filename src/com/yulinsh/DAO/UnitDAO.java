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

import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.UnitVO;

/**
 * 单位申请 数据处理
 * @author Eric
 *UnitTable 
 *pname ,psex
UnitID,UnitName,UnitPhone,UnitMailBox,UnitQQ,UnitMsn,UnitAuditState,UnitWebsite,UnitContent
 */
public class UnitDAO {
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
	 * 申请 添加
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void InsertUnit(UnitVO vo)
	{
		try
		{
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());
			String   UnitID=RandomStrg.getGUID();
				sql="insert into unittable (UnitID,pname,psex,UnitName,UnitPost,UnitPhone,UnitMailBox," +
						"UnitQQ,UnitMsn,UnitAuditState,UnitWebsite,UnitContent,unittime)" +
						" values('"+UnitID+"',?,?,?,?,?,?,?,?,'1',?,?,'"+datetime+"')";//12
				 Object []args = new Object[]{
						 vo.getPname(),
						 vo.getPsex(),
						 vo.getUnitName(),
						 vo.getUnitPost(),
						 vo.getUnitPhone(),
						 vo.getUnitMailBox(),
						 vo.getUnitQQ(),
						 vo.getUnitMsn(),
//						 vo.getUnitAuditState(),
						 vo.getUnitWebsite(),
						 vo.getUnitContent()
				 };
				template.update(sql, args);
				System.err.println("sql inset ="+sql);
		 
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	/**
	 * 个人申请 信息修改
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void UpdateUnit(String  id)
	{
		try
		{
			/***
			 * 1没有审批通过 2审批通过
			 */
			String   UnitID=RandomStrg.getGUID();
				sql="update  unittable set  UnitAuditState='2'   where UnitID='"+id+"'";//11
				 Object []args = new Object[]{
//						 vo.getPname(),
//						 vo.getPsex(),
//						 vo.getUnitName(),
//						 vo.getUnitPost(),
//						 vo.getUnitPhone(),
//						 vo.getUnitMailBox(),
//						 vo.getUnitQQ(),
//						 vo.getUnitMsn(),
//						 vo.getUnitAuditState(),
//						 vo.getUnitWebsite(),
//						 vo.getUnitContent(),
//						 vo.getUnitID()
				 };
				template.update(sql, args);
				System.err.println("sql inset ="+sql);
		 
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	/**
	 * 个人申请删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void DelUnit(String vo)
	{
		try {
			 
			//update  表明 set pname= where  pID=
			sql="  delete from unittable where    UnitID='"+vo+"'";//13
			 Object []args = new Object[]{
//			  vo.getUnitID()
			 };
			template.update(sql, args);
		   System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 * 数据查询
	 * 创建人：Eric 创建时间：2011-12-5
	 * @return
	 */
	public List ListUnit()
	{
 
		List list=null;
		try {
			String sql = "select * from unittable order by unittime   desc ";
			
			System.out.println(template);
			 list = template.query(sql, new RowMapper() {

				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					UnitVO vo = new UnitVO();
					vo.setUnitID(rs.getString("UnitID"));
					vo.setPname(rs.getString("pname"));
					vo.setPsex(rs.getString("psex"));
					vo.setUnitName(rs.getString("UnitName"));
					vo.setUnitPost(rs.getString("unitPost"));
					vo.setUnitPhone(rs.getString("UnitPhone"));
					vo.setUnitMailBox(rs.getString("UnitMailBox"));
					vo.setUnitQQ(rs.getString("UnitQQ"));
					vo.setUnitMsn(rs.getString("UnitMsn"));
					vo.setUnitAuditState(rs.getString("UnitAuditState"));
					vo.setUnitWebsite(rs.getString("UnitWebsite"));
					vo.setUnitContent(rs.getString("UnitContent"));
					vo.setUnittime(rs.getString("unittime"));
				 

					return vo;
				}

			});
			 System.out.println(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	/**
	 * 数据查询 单个数据
	 * 创建人：Eric 创建时间：2011-5-27
	 * @return
	 */
	public List ListUnitOne(String id)
	{
 
		List list=null;
		try {
			String sql = "select * from unittable where UnitID='"+id+"'";
			
			System.out.println(template);
			 list = template.query(sql, new RowMapper() {

				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					UnitVO vo = new UnitVO();
					vo.setUnitID(rs.getString("UnitID"));
					vo.setPname(rs.getString("pname"));
					vo.setPsex(rs.getString("psex"));
					vo.setUnitName(rs.getString("UnitName"));
					vo.setUnitPost(rs.getString("unitPost"));
					vo.setUnitPhone(rs.getString("UnitPhone"));
					vo.setUnitMailBox(rs.getString("UnitMailBox"));
					vo.setUnitQQ(rs.getString("UnitQQ"));
					vo.setUnitMsn(rs.getString("UnitMsn"));
					vo.setUnitAuditState(rs.getString("UnitAuditState"));
					vo.setUnitWebsite(rs.getString("UnitWebsite"));
					vo.setUnitContent(rs.getString("UnitContent"));
					vo.setUnittime(rs.getString("unittime"));
					return vo;
				}

			});
			 System.out.println(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
}
