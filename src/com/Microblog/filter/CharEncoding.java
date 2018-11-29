package com.Microblog.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharEncoding implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
        arg0.setCharacterEncoding("gbk");
        arg1.setCharacterEncoding("gbk");
        arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
