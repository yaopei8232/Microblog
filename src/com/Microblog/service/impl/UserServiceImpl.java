package com.Microblog.service.impl;

import com.Microblog.dao.IUserDao;
import com.Microblog.dao.impl.UserDaoImpl;
import com.Microblog.model.Users;
import com.Microblog.service.IUserService;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public class UserServiceImpl implements IUserService {
    IUserDao userDao = new UserDaoImpl();
    @Override
    public Users userLogin(String usn, String pwd) throws SQLException {

        return userDao.userLogin(usn, pwd);
    }

    @Override
    public List<Users> selectByInterest(int uid) {
        return userDao.FindByInsert(uid);
    }

    @Override
    public List<Users> selectByListener() {
        return userDao.findByListener();
    }

}
