package com.edu.neu.foodclient.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebFilter("/*")
public class CrosFilter implements Filter {
    
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("跨域过滤器执行....");
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		
		res.setContentType("application/json;charset=utf-8");
		
		res.setHeader("Access-Control-Allow-Origin", req.getHeader("Origin"));
		res.setHeader("Access-Control-Allow-Credentials", "true");
		res.setHeader("Access-Control-Allow-Headers", 
				"Accept,"
				+ "Origin,"
				+ "No-Cache,"
				+ "X-Requested-With,"
				+ "If-Modified-Since,"
				+ "Pragma,"
				+ "Last-Modified,"
				+ "Cache-Control,"
				+ "Expires,"
				+ "Content-Type,"
				+ "X-E4M-With");
		chain.doFilter(request, response);
	}
}
