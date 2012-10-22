package com.yulinsh.Action.Personal;

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

import com.yulinsh.actionFrom.PersonalFrom;
import com.yulinsh.service.PersonalService;
import com.yulinsh.service.UserService;
import com.yulinsh.vo.PersonalVO;

/**
 * �������� �����Ϣ
 * @author Eric
 *
 */
public class PersonalAdd extends Action {

	PersonalService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		PersonalFrom userfrom = (PersonalFrom) form;
		PersonalVO vo = userfrom.getPersonalVO();
		//1��ͼƬ�ϴ� 2 ����Ϣ���
		String tupdid=request.getParameter("tupdid");
		if(tupdid.equals("1"))
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
			       vo.setPtoux(photname);
//			       service.getInsertAn(photname, "1");
			///////////
			       List arr = new ArrayList();
			       arr=	service.getInsertPersonal(vo);
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
			String strid=request.getParameter("id");
			vo.setPName(request.getParameter("pName"));
			vo.setPSex(request.getParameter("pSex"));
			vo.setPBirthTime(request.getParameter("pBirthTime"));
			vo.setPPhone(request.getParameter("pPhone"));
			vo.setPMailbox(request.getParameter("pMailbox"));
			vo.setPQQ(request.getParameter("pQQ"));
			vo.setPMsn(request.getParameter("pMsn"));
			
			vo.setPResidence(request.getParameter("pResidence"));
			vo.setPHometown(request.getParameter("pHometown"));
			vo.setPcontent(request.getParameter("pContent"));
			
		   	service.getUpdatePersonal(vo,strid);
			return mapping.findForward("add");
		}
	 
	  
  
 
 

	
	}

	public PersonalService getService() {
		return service;
	}

	public void setService(PersonalService service) {
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
