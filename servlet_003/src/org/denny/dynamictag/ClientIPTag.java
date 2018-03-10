package org.denny.dynamictag;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 鑾峰彇瀹㈡埛绔疘P
 * @author Ewonen-PC
 *
 */
public class ClientIPTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		// 鑾峰彇PageContext瀵硅薄
		PageContext ctx = (PageContext)this.getJspContext() ;
		// 鑾峰彇璇锋眰瀵硅薄
		ServletRequest req = ctx.getRequest() ;
		// 鑾峰彇瀹㈡埛绔疘P
		String ip = req.getRemoteAddr() ;
		// 鑾峰彇鏍囧噯杈撳嚭娴�
		JspWriter out = ctx.getOut() ;
		// 灏嗘暟鎹啓鍏ヨ緭鍑烘祦
		out.print(ip);
	}
}
