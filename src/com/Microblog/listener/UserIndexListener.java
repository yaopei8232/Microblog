package com.Microblog.listener;

import com.Microblog.dao.IUserDao;
import com.Microblog.dao.impl.UserDaoImpl;
import com.Microblog.model.Users;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * Created by ibf on 2018/11/27.
 */
public class UserIndexListener implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        IUserDao userDao = new UserDaoImpl();
        List<Users> lisUser = userDao.findByListener();
        System.out.println("====="+lisUser.size());
        servletContextEvent.getServletContext().setAttribute("userListListener",lisUser);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
