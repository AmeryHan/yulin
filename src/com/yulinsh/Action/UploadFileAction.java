package com.yulinsh.Action;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class UploadFileAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		UploadFileForm uploadFileForm = (UploadFileForm) form;// TODO
																// Auto-generated
																// method stub
		FormFile fName = uploadFileForm.getFile();
		System.out.println("�ϴ��ɹ���");

		try {
			String path = request.getSession().getServletContext()
					.getRealPath("photosc");
			Date date = new Date(System.currentTimeMillis());
			String strDate = new SimpleDateFormat("yyyyMMddhhmmss")
					.format(date);
			int random = (int) (Math.random() * 99);
			String photname = strDate + random + ".jpg";
			String fileName = path + "\\" + photname;

			FileOutputStream fos = new FileOutputStream(fileName);
			fos.write(fName.getFileData());
			fos.flush();
			fos.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
