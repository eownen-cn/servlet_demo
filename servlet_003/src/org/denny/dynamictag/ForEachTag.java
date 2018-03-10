package org.denny.dynamictag;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
public class ForEachTag extends SimpleTagSupport {
	private Iterable itorator ;
	private String var ;
	
	public Iterable getItorator() {
		return itorator;
	}

	public void setItorator(Iterable itorator) {
		this.itorator = itorator;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
	}

	@Override
	public void doTag() throws JspException, IOException {
		itorator = itorator instanceof Set ? (Set)itorator : itorator instanceof List ? (List)itorator : itorator ; 
		for(Object o : itorator) {
			this.getJspContext().setAttribute(this.var, o);
			this.getJspBody().invoke(null);
		}
		
	}
}
