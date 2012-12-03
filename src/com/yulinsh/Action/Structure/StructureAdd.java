package com.yulinsh.Action.Structure;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.util.Streams;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.actionFrom.NewsFrom;
import com.yulinsh.service.NewsService;
import com.yulinsh.service.StructureService;
import com.yulinsh.vo.NewsVO;
import com.yulinsh.vo.StructureVO;

/***
 * 组织机构添加
 * @author Administrator
 *
 */
public class StructureAdd extends Action {
	StructureService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	 
		StructureVO vo =  new StructureVO() ;
		//1是图片上传 2 是信息添加
		String tupdid=request.getParameter("tupdid");
		if("1".equals(tupdid))
		{
			//////////////
			String path = request.getSession().getServletContext().getRealPath("photosc"); 
			System.err.println(""+path);
					String strurl=request.getParameter("url");
					
//					service.getInsertAn(vo);
					//把text1.txt文件的数据 读取到text2.txt文件中

			        String s1=strurl;
			        Date date = new Date(System.currentTimeMillis()); 
			        String strDate = new SimpleDateFormat("yyyyMMddhhmmss").format(date); 
			        int random = (int)(Math.random()*99); 
			        String photname=strDate+random+".jpg";
			        String s2=path+"\\"+photname;

			       copyFile2(s1, s2);
			       vo.setStoux(photname);
//			       service.getInsertAn(photname, "1");
			///////////
			       //List arr = new ArrayList();
			       StructureVO arr=	service.getInsertZuZhi(vo);
			   	   request.setAttribute("arr", arr);
			   	///查询出来
				return mapping.findForward("upd");
		}
		
//		else if(tupdid.equals("3"))
//		{
//			//修改审批通过 
////			String strid=request.getParameter("id");
////		   	service.getUpdatePersonal(strid);
////			return mapping.findForward("add");
//		} 
//		
		else {
			String strid=request.getParameter("zuzhiid");
			vo.setSname(request.getParameter("pName"));
			vo.setSsex(request.getParameter("psex"));
			System.err.println(""+request.getParameter("pHometown"));
			vo.setSshzw(request.getParameter("pHometown"));
			vo.setSjs(request.getParameter("pContent"));
		 
			vo.setStoux(request.getParameter("photname"));
			if(null == strid || "".equals(strid)){
				service.getInsertZuZhi(vo);
			}else{
				service.getUpdateZuZhi(vo, strid);
			}
		   	
			return mapping.findForward("add");
		}
	 
	  
  
 
	}

	public StructureService getService() {
		return service;
	}

	public void setService(StructureService service) {
		this.service = service;
	}
	/***
	 * 文件的读取
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

//         while ((i = inFile.read(buffer)) != -1) {
//
//         outFile.write(buffer, 0, i);
//
//         }//end while
 		Streams.copy(inFile, outFile, true);// 开始把文件写到你指定的上传文件夹
         inFile.close();

         outFile.close();

         }//end try

         catch (Exception e) {



         }//end catch

         }//end copyFil
 
	 

}
