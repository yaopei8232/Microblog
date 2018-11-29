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
public class ForWardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取微博内容
        String wcontent = req.getParameter("wcontent");
        int wid =Integer.parseInt(req.getParameter("wid"));
        String wimage=req.getParameter("wimage");
        HttpSession session = req.getSession();
        Users use = new Users();
        use= (Users) session.getAttribute("userinfo");
        int uid = use.getUid();
        IWeiboService weiboService = new WeiboServiceImpl();
        boolean flag = weiboService.ForWardMicroblog(uid, wcontent, wid, wimage);
        if(flag){
            //转发成功后需要回到原页面
            int  pagesize= Integer.parseInt(this.getServletConfig().getInitParameter("pagesize"));
            int nowpage=Integer.parseInt(req.getParameter("np"));
            PageBean pageBean = new PageBean();
            pageBean= weiboService.SelectByPage(uid,nowpage,pagesize);
            session.setAttribute("weiboList",pageBean);
            resp.getWriter().printf("<script>alert('转发成功');location.href='home.jsp'</script>");
        }else {
            System.out.println("转发失败");
            resp.getWriter().printf("<script>alert('转发失败');location.href='home.jsp'</script>");
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);

    }
}
