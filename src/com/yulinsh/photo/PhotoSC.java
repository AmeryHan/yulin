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
 * 图片上传
 * 
 * @author Administrator
 * 
 */
public class PhotoSC extends Action {
	PhotoService service;

	public File tmpDir = null;// 初始化上传文件的临时存放目录
	public File saveDir = null;// 初始化上传文件后的保存目录

	public PhotoService getService() {
		return service;
	}

	public void setService(PhotoService service) {
		this.service = service;
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String path = request.getSession().getServletContext().getRealPath(
				"photosc");//获得发布路径
		System.err.println("" + path);
		String strurl = request.getParameter("url");//上传路径

		// service.getInsertAn(vo);
		// 把text1.txt文件的数据 读取到text2.txt文件中

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
//				DiskFileItemFactory dff = new DiskFileItemFactory();// 创建该对象
//				dff.setRepository(tmpDir);// 指定上传文件的临时目录
//				dff.setSizeThreshold(10240000);// 指定在内存中缓存数据大小,单位为byte
//				ServletFileUpload sfu = new ServletFileUpload(dff);// 创建该对象
//
//				sfu.setSizeMax(10000000);// 指定一次上传多个文件的总尺寸
//				FileItemIterator fii;
//
//				fii = sfu.getItemIterator(request);
//				// 解析request
//				// 请求,并返回FileItemIterator集合
//				while (fii.hasNext()) {
//					FileItemStream fis = fii.next();// 从集合中获得一个文件流
//					if (!fis.isFormField() && fis.getName().length() > 0) {// 过滤掉表单中非文件域
//						String fileName = fis.getName().substring(
//								fis.getName().lastIndexOf("\\"));// 获得上传文件的文件名
//						System.out.println("request.getRealPath()=="
//								+ request.getRealPath("/"));
//						String uploadPath = request.getRealPath("/")
//								+ "dataimages\\";// 选定上传的目录此处为当前目录
//
//						if (!new File(uploadPath).isDirectory())// 选定上传的目录此处为当前目录，没有则创建
//							new File(uploadPath).mkdirs();
//						System.out.println("uploadPath=" + uploadPath);
//						fileName = fileName
//								.substring(fileName.lastIndexOf("."));// 获取从.开始到最后的字符
//						// 将时间转化为字符串用于给文件或者文件夹改名，防止传上来的图片名称相同
//						Date time = new Date();
//						String dirTime = String.valueOf(time.getTime());
//						// 
//						BufferedInputStream in = new BufferedInputStream(fis
//								.openStream());// 获得文件输入流
//
//						// BufferedOutputStream out = new
//						// BufferedOutputStream(new
//						// FileOutputStream(new
//						// File(saveDir+"\\"+dirTime+fileName)));//获得文件输出流
//						BufferedOutputStream out = new BufferedOutputStream(
//								new FileOutputStream(new File(uploadPath + "\\"
//										+ dirTime + fileName)));// 获得文件输出流
//						// pp为已经上传的文件
//						pp = uploadPath + dirTime + fileName;
//						System.out.println("pp=" + pp);
//						// upto为上传的路径
//						upto = uploadPath;
//
//						Streams.copy(in, out, true);// 开始把文件写到你指定的上传文件夹
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

	public void init() {// 初始化，没什么意义

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
	 * 文件的读取
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
			Streams.copy(inFile, outFile, true);// 开始把文件写到你指定的上传文件夹
			inFile.close();

			outFile.close();

		}// end try

		catch (Exception e) {

		}// end catch

	}// end copyFile

}
