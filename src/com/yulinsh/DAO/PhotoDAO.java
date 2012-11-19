package com.yulinsh.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.yulinsh.vo.AnnouncementVO;
import com.yulinsh.vo.PhotoVO;

import soja.base.RandomStrg;

public class PhotoDAO {
	
	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	/**
	 *  图片保存
	 * 创建人：Eric 创建时间：2011-12-1
	 * @param vo
	 */
	public void InsertAn(String url,String type)
	{
		String anid="";
		try {
			SimpleDateFormat tempDate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String datetime=tempDate.format(new java.util.Date());

			anid=RandomStrg.getGUID();
			String sql="insert into photo (id,url,phototype ,phototime) " +
					"values('"+anid+"','"+url+"','"+type+"' ,'"+datetime+"')";//5
			 Object []args = new Object[]{
					 
					 
			
			 };
			template.update(sql, args);
		
		
			System.err.println("sql inset ="+sql);
		}catch (Exception e) {
 
			e.printStackTrace();
		}
	}
	
	/**
	 * 图片删除 创建人：Eric 创建时间：2011-5-27
	 * 
	 * @param ID
	 */
	public void DelPhoto(String  pdid) {
		try {

			// update 表明 set pname= where pID=
			String	sql = "  delete from photo where    id='"+pdid+"'";// 13
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
	 *图片查询 查询数据
	 * 创建人：Eric 创建时间：2011-5-27
	 */
	public List SelectPhoto()
	{
		String sql ="select * from photo        order by phototime   desc  "; 
		System.out.println(sql);
	 
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				PhotoVO  vo = new PhotoVO();
				 vo.setId(rs.getString("id"));
				 vo.setUrl(rs.getString("url"));
				 vo.setPhototype(rs.getString("phototype"));
				 vo.setPhototime(rs.getString("phototime")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	/**
	 *图片查询 查询数据
	 * 创建人：Eric 创建时间：2011-5-27
	 */
	public List SelectPhotofy(String str1,String str2)
	{
		String sql ="select  *   from photo  order by phototime   desc       limit "+str1+","+str2+" "; 
		System.out.println(sql);
	 
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				PhotoVO  vo = new PhotoVO();
				 vo.setId(rs.getString("id"));
				 vo.setUrl(rs.getString("url"));
				 vo.setPhototype(rs.getString("phototype"));
				 vo.setPhototime(rs.getString("phototime")); 
		 
				return vo;
			}
			
		});
		return list;
	}
	/**
	 *图片查询 、一张
	 * 创建人：Eric 创建时间：2011-5-27
	 */
	public List getSelectPhotoOne(String id)
	{
		String sql ="select * from photo   where id='"+id+"'    "; // 13 
		System.out.println(sql);
	 
		List list = template.query(sql, new RowMapper()
		{
		 
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				PhotoVO  vo = new PhotoVO();
				 vo.setId(rs.getString("id"));
				 vo.setUrl(rs.getString("url"));
				 vo.setPhototype(rs.getString("phototype"));
				 vo.setPhototime(rs.getString("phototime")); 
		 
				return vo;
			}
			
		});
		return list;
	}
}
