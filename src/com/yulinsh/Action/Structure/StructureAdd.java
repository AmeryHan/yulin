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
 * ��֯�������
 * @author Administrator
 *
 */
public class StructureAdd extends Action {
	StructureService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	 
		StructureVO vo =  new StructureVO() ;
		//1��ͼƬ�ϴ� 2 ����Ϣ���
		String tupdid=request.getParameter("tupdid");
		if("1".equals(tupdid))
		{
			//////////////
			String path = request.getSession().getServletContext().getRealPath("photosc"); 
			System.err.println(""+path);
					String strurl=request.getParameter("url");
					
//					service.getInsertAn(vo);
					//��text1.txt�ļ������� ��ȡ��text2.txt�ļ���

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
			   	///��ѯ����
				return mapping.findForward("upd");
		}
		
//		else if(tupdid.equals("3"))
//		{
//			//�޸�����ͨ�� 
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
	 * �ļ��Ķ�ȡ
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
 		Streams.copy(inFile, outFile, true);// ��ʼ���ļ�д����ָ�����ϴ��ļ���
         inFile.close();

         outFile.close();

         }//end try

         catch (Exception e) {



         }//end catch

         }//end copyFil
 
	 

}
