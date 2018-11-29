package com.Microblog.controller;

import com.Microblog.model.PageBean;
import com.Microblog.model.Users;
import com.Microblog.service.IWeiboService;
import com.Microblog.service.impl.WeiboServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ibf on 2018/11/27.
 */
public class PageChangeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        IWeiboService  weiboService = new WeiboServiceImpl();
        Users use = new Users();
        if(session.getAttribute("userinfo")!=null){
            use= (Users) session.getAttribute("userinfo");
        }

        String  np = req.getParameter("np");
        if(np==null){
            np="1";
        }
        String pagesize = this.getServletConfig().getInitParameter("pagesize");
        System.out.println(pagesize);
        System.out.println();
        PageBean pageBean = weiboService.SelectByPage(use.getUid(), Integer.parseInt(np), Integer.parseInt(pagesize));
        System.out.println(pageBean);
        System.out.println(pageBean.getPageSize());
        //将取出的分页数据写入session 中
        session.setAttribute("weiboList",pageBean);
        ;
        resp.sendRedirect("home.jsp");

    }
}
