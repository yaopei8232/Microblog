package com.Microblog.dao;

import com.Microblog.model.Users;
import com.Microblog.model.Weibo;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public interface IUserDao {
    public Users userLogin(String usn, String pwd) throws SQLException;
    public List<Users> FindByInsert(int uid);
    //监听器显示用户头像信息
    public List<Users> findByListener();


}
