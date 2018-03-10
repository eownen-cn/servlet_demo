package org.denny.dynamictag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 获取客户端IP
 * @author Ewonen-PC
 *
 */
public class IFTag extends SimpleTagSupport {

	private boolean test ;
	public void setTest(boolean test) {
		this.test = test;
	}
	@Override
	public void doTag() throws JspException, IOException {
		if(test) {
			this.getJspBody().invoke(this.getJspContext().getOut()); 
		}
	}
}
