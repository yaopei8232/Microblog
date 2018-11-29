package com.Microblog.controller;

import com.Microblog.model.PageBean;
import com.Microblog.model.Users;
import com.Microblog.model.Weibo;
import com.Microblog.service.IRelationsService;
import com.Microblog.service.IUserService;
import com.Microblog.service.IWeiboService;
import com.Microblog.service.impl.RelationsServiceImpl;
import com.Microblog.service.impl.UserServiceImpl;
import com.Microblog.service.impl.WeiboServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public class LoginController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String usn = req.getParameter("usn").trim();
        String pwd =req.getParameter("pwd").trim();
        System.out.println(usn+pwd);
        try {
            Users users = userService.userLogin(usn, pwd);
            System.out.println(users);
            if(users!=null){
                HttpSession session = req.getSession();
                session.setAttribute("userinfo",users);
                IWeiboService weiboService = new WeiboServiceImpl();
            /*    List<Weibo> weibos = weiboService.selectByLogin(users.getUid());
                session.setAttribute("weiboList",weibos);*/
            //显示所有关注人的微博信息
                PageBean pageBean = new PageBean();
                int np=req.getParameter("np")!=null?Integer.parseInt(req.getParameter("np")):1;
                String pagesize = this.getServletConfig().getInitParameter("pagesize");
                pageBean = weiboService.SelectByPage(users.getUid(), np, Integer.parseInt(pagesize));
                session.setAttribute("weiboList",pageBean);

                // 获取未关注的人的信息
                List<Users> usersAllList = userService.selectByInterest(users.getUid());
                System.out.println(usersAllList);
                session.setAttribute("usersAllList",usersAllList);
                List<Users> usersList = new LinkedList<>();

                for(int i=0;i<8;i++){
                    usersList.add(usersAllList.get(i));
                }
                session.setAttribute("userList",usersList);









                //显示微博数量
                int countByMicroblog= weiboService.countByMicroblog(users.getUid());
                session.setAttribute("countblog",countByMicroblog);


                //显示所关注人的数量
                IRelationsService relationsService = new RelationsServiceImpl();
                int countRlat = relationsService.countByAttention(users.getUid());
                session.setAttribute("countRelation",countRlat);

                //显示粉丝数量
                int countVeri= relationsService.CountByVermicelli(users.getUid());
                session.setAttribute("countVeri",countVeri);

                resp.sendRedirect("home.jsp");
            }else {
                resp.getWriter().printf("<script>alert('用户名或密码错误!');location.href='login.jsp'</script>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
