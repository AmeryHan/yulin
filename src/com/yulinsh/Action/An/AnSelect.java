package com.yulinsh.Action.An;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yulinsh.service.AnService;
 

/**
 * ������ʾ �б�
 * @author Eric
 *
 */
public class AnSelect extends Action {
 
	AnService service;

		public AnService getService() {
		return service;
	}

	public void setService(AnService service) {
		this.service = service;
	}

		public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) {
			System.err.println(" select ");
			List arr = new ArrayList();
			arr = service.getListAn();
			request.setAttribute("arr", arr);

			//�̻ᶯ̬
			List arr1 = new ArrayList();
			arr1 = service.getListNews();
			request.setAttribute("arr1", arr1);
			
			//����ǰ�� ��ѯ
			List arr2 = new ArrayList();
			arr2 = service.getListPolicy();
			request.setAttribute("arr2", arr2);
			
			//���� ��ѯ
			List arr3 = new ArrayList();
			arr3 = service.getListHometown();
			request.setAttribute("arr3", arr3);
			
			//��Ա��� ��ѯ
			List arr4= new ArrayList();
			arr4 = service.getListMember();
			request.setAttribute("arr4", arr4);
			
			//�������� ��ѯ
			List arr5= new ArrayList();
			arr5 = service.getListLaox();
			request.setAttribute("arr5", arr5);
			
			//��ҵ��һ����¼
			List arr6= new ArrayList();
			arr6 = service.getListqye();
			request.setAttribute("arr6", arr6);
			
			//��Ա��һ��
			List arr7= new ArrayList();
			arr7 = service.getListqhy();
			request.setAttribute("arr7", arr7);
			
			
			//��֯�ṹ
			List arr8= new ArrayList();
			arr8 = service.getListZuZhiXS();
			request.setAttribute("arr8", arr8);
			
			return mapping.findForward("list");
		}

 

	 

}
