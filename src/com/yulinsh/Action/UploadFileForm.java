package com.yulinsh.Action;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class UploadFileForm extends ActionForm {

 private FormFile file;


 public ActionErrors validate(ActionMapping mapping,
   HttpServletRequest request) {
  // TODO Auto-generated method stub
  return null;
 }


 public void reset(ActionMapping mapping, HttpServletRequest request) {
  // TODO Auto-generated method stub
 }

 public FormFile getFile() {
  return file;
 }

 public void setFile(FormFile file) {
  this.file = file;
 }
}