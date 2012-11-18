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
public class OtherDAO {

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
	public void addOrUpdate(AnnouncementVO vo)
	{
		String anid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());

			anid=RandomStrg.getGUID();
			sql="insert into shjs (fagaoren,neirong,updatetime,type)" +
					"values(?,?,'"+datetime+"',?)";//5
			 Object []args = new Object[]{
					 vo.getAnAuthor(),
					 vo.getAnConent(),
					 vo.getType(),
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

	public AnnouncementVO getLatestOne(String type) {

		String sql ="select * from shjs where  type='"+type+"' order by updateTime desc limit 0,1";
		System.out.println(sql);
		System.out.println(template);
		Object list = template.queryForObject(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				AnnouncementVO  vo = new AnnouncementVO();
				 vo.setAnID(rs.getString("idshjs").toString());
				 //vo.setAnTitle(rs.getString("anTitle").toString());
				 vo.setAnConent((String)rs.getString("neirong"));
				 //vo.setAnTime(rs.getString("anTime").toString());
				 vo.setAnAuthor((String)rs.getString("fagaoren")); 
		 
				return vo;
			}
			
		});
		return (AnnouncementVO)list;
	}
}
