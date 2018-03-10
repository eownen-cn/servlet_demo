package org.denny.dynamictag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 获取客户端IP
 * @author Ewonen-PC
 *
 */
public class GetBodyContent extends SimpleTagSupport {
	
	@Override
	public void doTag() throws JspException, IOException {
		StringWriter sw = new StringWriter() ;// 创建一个输出流,该流中的内容可以通过toString()转换为文本
		this.getJspBody().invoke(sw) ; // 获取标签体对象,并将其交给输出流
		this.getJspContext().getOut().print(sw.toString().toUpperCase()); // 将流中的数据以文本的形式取出,并转换为大写,再重写回输出流
	}
}
