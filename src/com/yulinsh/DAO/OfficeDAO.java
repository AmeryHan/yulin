package com.yulinsh.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import soja.base.RandomStrg;

import com.yulinsh.vo.OfficeVO;
import com.yulinsh.vo.UnitVO;

/**
 * 
 * @author eric ���´����ƣ����´���ַ �������ˣ���ϵ�绰 ��qq,���䣬��ַ����פʱ�䣬�����ߣ����ݣ� OfficeTable
 *         OfficeID
 *         ,OfficeName,Officeadrr,Officepname,Officephone,OfficeQQ,OfficeEmie
 *         ,OfficeTime,OfficeAuthor,OfficeContent.
 */
public class OfficeDAO {
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
	 * ���� ��� �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * 
	 * @param vo
	 */
	public void InsertOffice(OfficeVO vo) {
		String OfficeID = "";
		try {
			OfficeID = RandomStrg.getGUID();
			sql = "insert into officetable (OfficeID,OfficeName,Officeadrr,Officepname,Officephone,OfficeQQ,OfficeEmie,"
					+ "OfficeTime,OfficeAuthor,OfficeContent) values('"
					+ OfficeID + "',?,?,?,?,?,?,?,?,?)";// 10
			Object[] args = new Object[] { vo.getOfficeName(),
					vo.getOfficeadrr(),
					vo.getOfficepname(),
					vo.getOfficephone(), 
					vo.getOfficeQQ(),
					vo.getOfficeEmie(),
					vo.getOfficeTime(),
					vo.getOfficeAuthor(),
					vo.getOfficeContent()

			};
			template.update(sql, args);

			System.err.println("sql inset =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * �������� ��Ϣ�޸� �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * 
	 * @param vo
	 */
	public void UpdateOffice(OfficeVO vo) {

		try {

			sql = "update officetable  set OfficeName=?,Officeadrr=?,Officepname=?,Officephone=?,OfficeQQ=?,OfficeEmie=?,"
					+ "OfficeTime=?,OfficeAuthor=?,OfficeContent=?) where OfficeID=?";// 10
			Object[] args = new Object[] { vo.getOfficeName(),
					vo.getOfficeadrr(), vo.getOfficepname(),
					vo.getOfficephone(), vo.getOfficeQQ(), vo.getOfficeEmie(),
					vo.getOfficeTime(), vo.getOfficeAuthor(),
					vo.getOfficeContent(), vo.getOfficeID()

			};
			template.update(sql, args);

			System.err.println("sql update =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * ��������ɾ�� �����ˣ�Eric ����ʱ�䣺2011-12-1
	 * 
	 * @param ID
	 */
	public void DelOffice(OfficeVO vo) {
		try {

			sql = "delete from officetable   where OfficeID=?";// 10
			Object[] args = new Object[] {

			vo.getOfficeID()

			};
			template.update(sql, args);

			System.err.println("sql delete =" + sql);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 *��ѯ���� �����ˣ�Eric ����ʱ�䣺2011-12-5
	 */
	public List ListOffice() {
		OfficeVO vo;
		List list = null;
		try {
			String sql = "select * from officetable  order by OfficeEmie   desc ";
			System.out.println(sql);
			System.out.println(template);
			 list = template.query(sql, new RowMapper() {

				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					OfficeVO vo = new OfficeVO();

					vo.setOfficeID(rs.getString("OfficeID"));
					vo.setOfficeName(rs.getString("OfficeName"));
					vo.setOfficeadrr(rs.getString("Officeadrr"));
					vo.setOfficepname(rs.getString("Officepname"));
					vo.setOfficephone(rs.getString("Officephone"));
					vo.setOfficeQQ(rs.getString("OfficeQQ"));
					vo.setOfficeEmie(rs.getString("OfficeEmie"));
					vo.setOfficeTime(rs.getString("OfficeTime"));
					vo.setOfficeAuthor(rs.getString("OfficeAuthor"));
					vo.setOfficeContent(rs.getString("OfficeContent"));

					return vo;
				}

			});
			System.err.println("sql select =" + sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
