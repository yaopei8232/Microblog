package com.Microblog.service;

import com.Microblog.model.Users;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public interface IUserService {
    /*
    * �û���¼
    * */
    public Users userLogin(String usn, String pwd) throws SQLException;
    public List<Users> selectByInterest(int uid);
    public List<Users> selectByListener();
}