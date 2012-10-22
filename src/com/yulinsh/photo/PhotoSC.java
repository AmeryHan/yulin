package com.yulinsh.photo;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.jdbc.core.JdbcTemplate;

import soja.base.RandomStrg;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.yulinsh.actionFrom.AnFrom;
import com.yulinsh.service.AnService;
import com.yulinsh.service.PhotoService;
import com.yulinsh.vo.AnnouncementVO;

/*******************************************************************************
 * ͼƬ�ϴ�
 * 
 * @author Administrator
 * 
 */
public class PhotoSC extends Action {
	PhotoService service;

	public File tmpDir = null;// ��ʼ���ϴ��ļ�����ʱ���Ŀ¼
	public File saveDir = null;// ��ʼ���ϴ��ļ���ı���Ŀ¼

	public PhotoService getService() {
		return service;
	}

	public void setService(PhotoService service) {
		this.service = service;
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String path = request.getSession().getServletContext().getRealPath(
				"photosc");//��÷���·��
		System.err.println("" + path);
		String strurl = request.getParameter("url");//�ϴ�·��

		// service.getInsertAn(vo);
		// ��text1.txt�ļ������� ��ȡ��text2.txt�ļ���

		String s1 = strurl;
		Date date = new Date(System.currentTimeMillis());
		String strDate = new SimpleDateFormat("yyyyMMddhhmmss").format(date);
		int random = (int) (Math.random() * 99);
		String photname = strDate + random + ".jpg";
		String s2 = path + "\\" + photname;//"http://erickey.gotoip3.com/"+
		
		 copyFile2(s1, s2);
		
		 service.getInsertAn(photname, "1");
		
		
		            
		 return mapping.findForward("denglu2");

		// /////////////////
//		try {
//			String tmpPath = "c:\\tmpdir";
//			String savePath = "c:\\updir";
//			tmpDir = new File(tmpPath);
//			saveDir = new File(savePath);
//			if (!tmpDir.isDirectory())
//				tmpDir.mkdir();
//			if (!saveDir.isDirectory())
//				saveDir.mkdir();
//			String pp = null;
//			String upto = null;
//			if (ServletFileUpload.isMultipartContent(request)) {
//				DiskFileItemFactory dff = new DiskFileItemFactory();// �����ö���
//				dff.setRepository(tmpDir);// ָ���ϴ��ļ�����ʱĿ¼
//				dff.setSizeThreshold(10240000);// ָ�����ڴ��л������ݴ�С,��λΪbyte
//				ServletFileUpload sfu = new ServletFileUpload(dff);// �����ö���
//
//				sfu.setSizeMax(10000000);// ָ��һ���ϴ�����ļ����ܳߴ�
//				FileItemIterator fii;
//
//				fii = sfu.getItemIterator(request);
//				// ����request
//				// ����,������FileItemIterator����
//				while (fii.hasNext()) {
//					FileItemStream fis = fii.next();// �Ӽ����л��һ���ļ���
//					if (!fis.isFormField() && fis.getName().length() > 0) {// ���˵����з��ļ���
//						String fileName = fis.getName().substring(
//								fis.getName().lastIndexOf("\\"));// ����ϴ��ļ����ļ���
//						System.out.println("request.getRealPath()=="
//								+ request.getRealPath("/"));
//						String uploadPath = request.getRealPath("/")
//								+ "dataimages\\";// ѡ���ϴ���Ŀ¼�˴�Ϊ��ǰĿ¼
//
//						if (!new File(uploadPath).isDirectory())// ѡ���ϴ���Ŀ¼�˴�Ϊ��ǰĿ¼��û���򴴽�
//							new File(uploadPath).mkdirs();
//						System.out.println("uploadPath=" + uploadPath);
//						fileName = fileName
//								.substring(fileName.lastIndexOf("."));// ��ȡ��.��ʼ�������ַ�
//						// ��ʱ��ת��Ϊ�ַ������ڸ��ļ������ļ��и�������ֹ��������ͼƬ������ͬ
//						Date time = new Date();
//						String dirTime = String.valueOf(time.getTime());
//						// 
//						BufferedInputStream in = new BufferedInputStream(fis
//								.openStream());// ����ļ�������
//
//						// BufferedOutputStream out = new
//						// BufferedOutputStream(new
//						// FileOutputStream(new
//						// File(saveDir+"\\"+dirTime+fileName)));//����ļ������
//						BufferedOutputStream out = new BufferedOutputStream(
//								new FileOutputStream(new File(uploadPath + "\\"
//										+ dirTime + fileName)));// ����ļ������
//						// ppΪ�Ѿ��ϴ����ļ�
//						pp = uploadPath + dirTime + fileName;
//						System.out.println("pp=" + pp);
//						// uptoΪ�ϴ���·��
//						upto = uploadPath;
//
//						Streams.copy(in, out, true);// ��ʼ���ļ�д����ָ�����ϴ��ļ���
//					}
//				}
//			}
//		} catch (FileUploadException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
	}

	public void init() {// ��ʼ����ûʲô����

		String tmpPath = "c:\\tmpdir";
		String savePath = "c:\\updir";
		tmpDir = new File(tmpPath);
		saveDir = new File(savePath);
		if (!tmpDir.isDirectory())
			tmpDir.mkdir();
		if (!saveDir.isDirectory())
			saveDir.mkdir();

	}

	/***************************************************************************
	 * �ļ��Ķ�ȡ
	 * 
	 * @param source
	 * @param dest
	 */
	public static void copyFile2(String source, String dest) {

		try {

			java.io.File in = new java.io.File(source);

			java.io.File out = new java.io.File(dest);

			FileInputStream inFile = new FileInputStream(in);

			FileOutputStream outFile = new FileOutputStream(out);

			byte[] buffer = new byte[1024];

			int i = 0;

//			while ((i = inFile.read(buffer)) != -1) {
//
//				outFile.write(buffer, 0, i);
//
//			}// end while
			Streams.copy(inFile, outFile, true);// ��ʼ���ļ�д����ָ�����ϴ��ļ���
			inFile.close();

			outFile.close();

		}// end try

		catch (Exception e) {

		}// end catch

	}// end copyFile

}
