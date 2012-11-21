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
import com.yulinsh.vo.UserVo;

/**
 * 个人申请的 数据处理
 * 
 * @author Eric
 * 
 */
public class PersonalDAO {
	private PreparedStatement pstmt = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String sql = "";

	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	/**
	 * 申请 添加 创建人：Eric 创建时间：2011-12-1
	 * 
	 * @param vo
	 */
	public List InsertPersonal(PersonalVO vo) {
		String userid = "";
		List arr=null;
		// PersonalTable
		// ptoux, pName,pSex,pBirthTime,
		// pPhone,pMailbox,PQQ, pMsn,pAuditState,pResidence,pHometown,pContent
		try {
			// stmt=db.createStatement();
			// sql="insert into userinfo (userid,username,useradrr) values(3,'"+vo.getUserName()+"','"+vo.getUserAdrr()+"')";
			/***
			 * 1没有审批通过 2审批通过
			 */
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());
			userid =RandomStrg.getGUID();
			sql = "insert into personaltable (pID, ptoux,pName, pSex,pBirthTime,pPhone,pMailbox,pQQ,pMsn,pAuditState,"
					+ " pResidence,pHometown,pContent,pzctime) values('"
					+ userid
					+ "',?,?,?,?,?,?,?,?,'1',?,?,?,'"+datetime+"')";// 13
			Object[] args = new Object[] {
					vo.getPtoux(), 
					vo.getPName(),
					vo.getPSex(),
					vo.getPBirthTime(),
					vo.getPPhone(),
					vo.getPMailbox(),
					vo.getPQQ(),
					vo.getPMsn(),
//					vo.getPAuditState(),
					vo.getPResidence(),
					vo.getPHometown(),
					vo.getPcontent()

			};
			template.update(sql, args);
			System.err.println("sql inset =" + sql);
		   arr=ListPersOne(userid);
		

		} catch (Exception e) {

			e.printStackTrace();
		}
		return arr;
	}

	/**
	 * 个人申请 信息修改 创建人：Eric 创建时间：2011-12-1
	 * 
	 * @param vo
	 */
	public void UpdatePersonal(PersonalVO vo,String id) {
		try {

			// update 表明 set pname= where pID=
			sql = "update personaltable set   pName=?, pSex=?,pBirthTime=?,pPhone=?,pMailbox=?,pQQ=?,pMsn=?,pAuditState=?,"
					+ " pResidence=?,pHometown=?,pContent=? where pID='"+id+"'";// 13
			Object[] args = new Object[] { 
			
                    vo.getPName(),
					vo.getPSex(),
					vo.getPBirthTime(),
					vo.getPPhone(),
					vo.getPMailbox(), 
					vo.getPQQ(),
					vo.getPMsn(),
					vo.getPAuditState(),
					vo.getPResidence(), 
					vo.getPHometown(),
					vo.getPcontent()
				 
					};
			template.update(sql, args);
			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	/**
	 * 个人申请 信息修改 创建人：Eric 创建时间：2011-12-1
	 * 
	 * @param vo
	 */
	public void UpdatePersonal(String id) {
		try {

			// update 表明 set pname= where pID=
			sql = "update personaltable set   pAuditState='2' where pID='"+id+"'";// 13
			Object[] args = new Object[] { 
//					vo.getPtoux(),
//                    vo.getPName(),
//					vo.getPSex(),
//					vo.getPBirthTime(),
//					vo.getPPhone(),
//					vo.getPMailbox(), 
//					vo.getPQQ(),
//					vo.getPMsn(),
//					vo.getPAuditState(),
//					vo.getPResidence(), 
//					vo.getPHometown(),
//					vo.getPContent()
//					vo.getPID() 
					};
			template.update(sql, args);
			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * 个人申请删除 创建人：Eric 创建时间：2011-12-1
	 * 
	 * @param ID
	 */
	public void DelPersonal(String  pdid) {
		try {

			// update 表明 set pname= where pID=
			sql = "  delete from personaltable where    pID='"+pdid+"'";// 13
			Object[] args = new Object[] { 
//					vo.getPID()
					};
			template.update(sql, args);
			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * 数据查询 创建人：Eric 创建时间：2011-12-5
	 * 
	 * @return
	 */
	public List ListPersonal() {
		List list=null;
		try {
			String sql = "select pID, ptoux,pName, pSex,pBirthTime,pPhone,pMailbox,pQQ,pMsn,pAuditState,"
					+ " pResidence,pHometown,pContent,pzctime from personaltable  order by pzctime   desc";
			System.out.println(sql); 
			System.out.println(template);
			list = template.query(sql, new RowMapper() {

				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					PersonalVO vo = new PersonalVO();
					vo.setPid(rs.getString("pID"));
					vo.setPtoux(rs.getString("ptoux"));
					vo.setPName(rs.getString("pName"));
					vo.setPSex(rs.getString("pSex"));
					vo.setPBirthTime(rs.getString("pBirthTime"));
					vo.setPPhone(rs.getString("pPhone"));
					vo.setPMailbox(rs.getString("pMailbox"));
					vo.setPQQ(rs.getString("pQQ"));
					vo.setPMsn(rs.getString("pMsn"));
					vo.setPAuditState(rs.getString("pAuditState"));
					vo.setPResidence(rs.getString("pResidence"));
					vo.setPHometown(rs.getString("pHometown"));
					vo.setPcontent(rs.getString("pContent"));
					vo.setPzctime(rs.getString("pzctime"));
					return vo;
				}

			});
			System.err.println("sql=="+sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	/**
	 * 查询某一条信息 创建人：Eric 创建时间：2012-5-27
	 * 
	 * @return
	 */
	public List ListPersOne(String  id) {
		List list=null;
		
		try {
			String sql = "select pID, ptoux,pName, pSex,pBirthTime,pPhone,pMailbox,pQQ,pMsn,pAuditState,"
					+ " pResidence,pHometown,pContent,pzctime from personaltable  where pID='"+id+"' ";
			System.out.println(sql);
			System.out.println(template);
			list = template.query(sql, new RowMapper() {

				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					PersonalVO vo = new PersonalVO();
					vo.setPid(rs.getString("pID"));
					vo.setPtoux(rs.getString("ptoux"));
					vo.setPName(rs.getString("pName"));
					vo.setPSex(rs.getString("pSex"));
					vo.setPBirthTime(rs.getString("pBirthTime"));
					vo.setPPhone(rs.getString("pPhone"));
					vo.setPMailbox(rs.getString("pMailbox"));
					vo.setPQQ(rs.getString("pQQ"));
					vo.setPMsn(rs.getString("pMsn"));
					vo.setPAuditState(rs.getString("pAuditState"));
					vo.setPResidence(rs.getString("pResidence"));
					vo.setPHometown(rs.getString("pHometown"));
					vo.setPcontent(rs.getString("pContent"));
					vo.setPzctime(rs.getString("pzctime"));
					return vo;
				}

			});
			System.err.println("sql=="+sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
