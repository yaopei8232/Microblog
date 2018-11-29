package com.Microblog.controller;

import com.Microblog.model.Users;
import com.Microblog.service.IUserService;
import com.Microblog.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Administrator on 2018/11/24 0024.
 */
public class ChangeUserController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        IUserService userService = new UserServiceImpl();
       //获取登录人信息
        Users  use = new Users();
        if(session.getAttribute("userinfo")!=null){
            use = (Users) session.getAttribute("userinfo");
        }
        //换一换关注人信息
        List<Users> listAllUser = (List<Users>) session.getAttribute("usersAllList");

        List<Users> listUser = (List<Users>) session.getAttribute("userList");

       if(listAllUser==null){
           System.out.println(use.getUid());
           listAllUser = userService.selectByInterest(use.getUid());
       }else if(listAllUser.size()>=8){
            if(listUser.size()==0){
                for(int i=0;i<8;i++){
                    listUser.add(listAllUser.get(i));
                }
            }else if(listUser.size()<=8){
                 listUser = ramdomList(listAllUser,listUser);

            }else {
                for(int i=0;i<listAllUser.size();i++){

                    listUser.add(listAllUser.get(i));
                }
            }

            session.setAttribute("listAllUser",listAllUser);
           if(listUser!=null){
               session.setAttribute("userList",listUser);

           }

       }
        resp.sendRedirect("home.jsp");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    public List<Users> ramdomList(List<Users> listAllUser,List<Users> listUser){
        List<Users> list = new LinkedList<>();
            int rd=0;
            int count=0;
            //flag =0 表示在当前页面
            int flag = 0;
            //记录用户的uid
            int uid=0;
        System.out.println("长度:"+listAllUser.size());
        while(count<8){
            rd =(int)(Math.random()*(listAllUser.size()));
            System.out.println("rd"+rd);
            uid=listAllUser.get(rd).getUid();
            for(int i=0;i<listUser.size();i++){
                if(listUser.get(i).getUid()==uid){
                    flag=1;
                    break;
                }else {
                    flag=0;
                }
            }
            if(flag==0){
             /*   System.out.println("rd"+rd);*/
                list.add(listAllUser.get(rd));
                count++;
            }


        }
        if(list.size()==8){
            return list;
        }else {
            return null;
        }







    }
}
