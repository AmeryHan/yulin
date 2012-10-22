package com.yulinsh.Action;



import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.web.struts.DelegatingRequestProcessor;

public class setcharrequest extends DelegatingRequestProcessor {

	@Override
	protected boolean processPreprocess(HttpServletRequest req, HttpServletResponse res) {
	    try {
	    	System.err.println("GBK");
			req.setCharacterEncoding("GBK");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return super.processPreprocess(req, res);
	}



}
