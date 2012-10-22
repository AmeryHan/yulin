package com.yulinsh.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import soja.base.RandomStrg;

import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.HometownVO;
import com.yulinsh.vo.LaoxVO;
import com.yulinsh.vo.MemberVO;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.PersonalVO;
import com.yulinsh.vo.PolicyVO;
import com.yulinsh.vo.StructureVO;
import com.yulinsh.vo.UnitVO;

/**
 * 数据处理
 * @author Eric
 *
 */
public class AnDAO {

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
	public void InsertAn(AnnouncementVO vo)
	{
		String anid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd");
			String datetime=tempDate.format(new java.util.Date());

			anid=RandomStrg.getGUID();
			sql="insert into antable (anID,anTitle,anConent,anTime,anAuthor ) " +
					"values('"+anid+"',?,?,'"+datetime+"',? )";//5
			 Object []args = new Object[]{
					 vo.getAnTitle(),
					 vo.getAnConent() ,
//					 vo.getAnTime(),
					 vo.getAnAuthor(),
					 
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
 
	/**
	 *公告 删除
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param ID
	 */
	public void DelAn(String vo)
	{
		try { 
			sql=" delete from antable  where anID='"+vo+"'";// 
			 Object []args = new Object[]{
			 
//				     vo.getAnID()
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql delete ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	/**
	 *公告 查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListAn()
	{
		String sql ="select * from antable t   order by antime   limit  5   ";//where ROWNUM<=5   Order   By anTime  desc";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				AnnouncementVO  vo = new AnnouncementVO();
				 vo.setAnID(rs.getString("anID"));
				 vo.setAnTitle(rs.getString("anTitle"));
				 vo.setAnConent(rs.getString("anConent"));
				 vo.setAnTime(rs.getString("anTime"));
				 vo.setAnAuthor(rs.getString("anAuthor")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	/**
	 *公告 查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListAn2()
	{
		String sql ="select * from antable t   order by antime   desc  ";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				AnnouncementVO  vo = new AnnouncementVO();
				 vo.setAnID(rs.getString("anID"));
				 vo.setAnTitle(rs.getString("anTitle"));
				 vo.setAnConent(rs.getString("anConent"));
				 vo.setAnTime(rs.getString("anTime"));
				 vo.setAnAuthor(rs.getString("anAuthor")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	/**
	 * 显示一条数据
	 * 创建人：Eric 创建时间：2012-1-1
	 * @param id
	 */
	public List ListAnOne(String id)
	{
		String sql ="select * from antable t   where  anID='"+id+"'";
		System.out.println(sql);
		System.out.println(template);
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				AnnouncementVO  vo = new AnnouncementVO();
				 vo.setAnID(rs.getString("anID").toString());
				 vo.setAnTitle(rs.getString("anTitle").toString());
				 vo.setAnConent(rs.getString("anConent").toString());
				 vo.setAnTime(rs.getString("anTime").toString());
				 vo.setAnAuthor(rs.getString("anAuthor").toString()); 
		 
				return vo;
			}
			
		});
		return list;
	}
	
	/**
	 * 新闻动态  查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListNews()
	{
		String sql ="select * from newstable   order by newsTime desc  limit  5 ";// where ROWNUM<=5   Order   By NewsTime   ";
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
	 * 政策动向  查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListPolicy()
	{
		String sql ="select * from policytable   order by policyTime  desc limit  5";//where rownum <=5 order by policyTime   ";
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
	 * 家乡  查询数据
	 * 创建人：Eric 创建时间：2012-2-12
	 */
	public List ListHometown()
	{
		String sql ="select * from hometowntable  order by hometime desc  limit  5";// where rownum <=5 order by hometime  ";
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
	 * 会员随笔  查询数据
	 * 创建人：Eric 创建时间：2012-2-12
	 */
	public List ListMember()
	{
		String sql ="select  * from membertable t  order by membertime   limit  5";//where rownum <=5 order by membertime  ";
		//limit 2 mysql
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
	 * 家乡  查询数据
	 * 创建人：Eric 创建时间：2012-2-12
	 */
	public List ListLaox()
	{
		String sql ="select * from laoxtable  order by laoxtime   limit  5";// where rownum <=6 order by laoxtime ";
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
	 * 企业第一条
	 * 创建人：Eric 创建时间：2011-12-5
	 * @return
	 */
	public List Listqye()
	{
 
		List list=null;
		 
		try {
			String sql = "select * from unittable order by unittime   desc    limit 1";
			
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
					String str=rs.getString("UnitContent");
					String str1="";
					 
						if(str.length()>15)
						{
							str1=str.substring(0, 15);
							str1+="...";
						}else
						{
							str1=str;
						}
						
					
					 
					
					vo.setUnitContent(str);
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
	 * 会员 创建人：Eric 创建时间：2011-12-5
	 * 
	 * @return
	 */
	public List Listqhy() {
		List list=null;
		try {
			String sql = "select pID, ptoux,pName, pSex,pBirthTime,pPhone,pMailbox,pQQ,pMsn,pAuditState,"
					+ " pResidence,pHometown,pContent,pzctime from personaltable  order by pzctime   desc  limit 1 ";
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
				 
			 
					String str=rs.getString("pContent");
					String str1="";
					 
						if(str.length()>30)
						{
							str1=str.substring(0, 30);
							str1+="...";
						}else
						{
							str1=str;
						}
					vo.setPcontent(str);
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
	 * 组织机构 查询数据
	 * 创建人：Eric 创建时间：2011-12-5
	 */
	public List ListZuZhiXS()
	{
		String sql ="select * from zuzhitable   order by sshzw  ";
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
}
